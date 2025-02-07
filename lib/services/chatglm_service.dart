import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer' as dev;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/chatglm_config.dart';
import '../providers/balance_provider.dart';
import '../providers/membership_provider.dart';

final chatGLMServiceProvider = Provider((ref) => ChatGLMService(ref));

class ChatGLMService {
  final String _apiKey = ChatGLMConfig.apiKey;
  final String _baseUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';
  final String _imageUrl = 'https://open.bigmodel.cn/api/paas/v4/images/generations';
  final ProviderRef _ref;

  // 定义各功能消耗的金币数
  static const int _textGenerationCost = 1;
  static const int _imageGenerationCost = 5;
  static const int _chatCost = 5;

  ChatGLMService(this._ref);

  Future<bool> _checkAndDeductBalance(int amount) async {
    // 检查会员状态
    final membershipState = _ref.read(membershipProvider);
    if (membershipState.isValid) {
      // 会员无需扣除金币
      return true;
    }
    
    // 非会员需要检查并扣除金币
    final balanceNotifier = _ref.read(balanceProvider.notifier);
    return await balanceNotifier.deductBalance(amount);
  }

  // 判断是否是内购ID
  bool _isInAppPurchaseId(String productId) {
    final inAppPurchaseIds = [
      'Loyoo2', 'Loyoo5', 'Loyoo9', 'Loyoo19',
      'Loyoo49', 'Loyoo99', 'Loyoo159', 'Loyoo239'
    ];
    return inAppPurchaseIds.contains(productId);
  }

  // 判断是否是订阅ID
  bool _isSubscriptionId(String productId) {
    final subscriptionIds = ['loyoo.weekly', 'loyoo.monthly.com'];
    return subscriptionIds.contains(productId);
  }

  // 获取商品类型
  String _getProductType(String productId) {
    if (_isInAppPurchaseId(productId)) {
      return 'in_app_purchase';
    } else if (_isSubscriptionId(productId)) {
      return 'subscription';
    } else {
      return 'unknown';
    }
  }

  Future<String> generateContent(String prompt) async {
    // 检查并扣除金币（文本生成消耗1个金币）
    final hasEnoughBalance = await _checkAndDeductBalance(_textGenerationCost);
    if (!hasEnoughBalance) {
      throw Exception('Insufficient balance. Please recharge or upgrade to premium membership to continue.');
    }

    try {
      dev.log('Preparing to call ChatGLM API', name: 'ChatGLMService');
      return await chat([{'role': 'user', 'content': prompt}]);
    } catch (e, stackTrace) {
      dev.log(
        'API call error',
        name: 'ChatGLMService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<String> generateImage(String prompt) async {
    // 检查并扣除金币（图片生成消耗5个金币）
    final hasEnoughBalance = await _checkAndDeductBalance(_imageGenerationCost);
    if (!hasEnoughBalance) {
      throw Exception('Insufficient balance. Please recharge or upgrade to premium membership to continue.');
    }

    try {
      dev.log('Preparing to call image generation API', name: 'ChatGLMService');
      
      final headers = {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      };

      final body = jsonEncode({
        'model': 'cogview-3',
        'prompt': prompt,
        'n': 1,
        'size': '1024x1024',
        'quality': 'standard',
        'style': 'vivid',
        'request_id': DateTime.now().millisecondsSinceEpoch.toString(),
      });

      dev.log('Sending image generation request', name: 'ChatGLMService', error: 'Request Body: $body');

      final response = await http.post(
        Uri.parse(_imageUrl),
        headers: headers,
        body: body,
      );

      dev.log('Received image generation response', name: 'ChatGLMService', error: 'Status Code: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        dev.log('Image generation response data', name: 'ChatGLMService', error: 'Response: $responseData');
        
        if (responseData['data'] != null && responseData['data'].isNotEmpty) {
          final imageUrl = responseData['data'][0]['url'];
          if (imageUrl == null) {
            throw Exception('Generated image URL is empty');
          }
          return imageUrl;
        } else {
          throw Exception('Invalid API response format: ${response.body}');
        }
      } else {
        throw Exception('API request failed: ${response.statusCode} - ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.log(
        'Image generation error',
        name: 'ChatGLMService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<String> chat(List<Map<String, String>> messages) async {
    // 检查并扣除金币（聊天消耗5个金币）
    final hasEnoughBalance = await _checkAndDeductBalance(_chatCost);
    if (!hasEnoughBalance) {
      throw Exception('Insufficient balance. Please recharge or upgrade to premium membership to continue.');
    }

    try {
      dev.log('Preparing to call ChatGLM API chat', name: 'ChatGLMService');
      
      final headers = {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      };

      final body = jsonEncode({
        'model': 'glm-4',
        'messages': messages,
        'temperature': 0.7,
        'top_p': 0.7,
        'stream': false,
        'request_id': DateTime.now().millisecondsSinceEpoch.toString(),
      });

      dev.log('Sending request to ChatGLM API', name: 'ChatGLMService', error: 'Request Body: $body');

      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: headers,
        body: body,
      );

      dev.log('Received API response', name: 'ChatGLMService', error: 'Status Code: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        dev.log('API response data', name: 'ChatGLMService', error: 'Response: $responseData');
        
        if (responseData['choices'] != null && 
            responseData['choices'].isNotEmpty &&
            responseData['choices'][0]['message'] != null) {
          final message = responseData['choices'][0]['message'];
          final content = message['content'];
          return content ?? 'Generated content is empty';
        } else {
          throw Exception('Invalid API response format: ${response.body}');
        }
      } else {
        throw Exception('API request failed: ${response.statusCode} - ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.log(
        'API call error',
        name: 'ChatGLMService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
} 