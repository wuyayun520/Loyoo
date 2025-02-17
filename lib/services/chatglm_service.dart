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

  // Define costs for each feature
  static const int _textGenerationCost = 1;
  static const int _imageGenerationCost = 5;
  static const int _chatCost = 5;

  // Error messages
  static const String _errorInsufficientBalance = 'Insufficient balance. Please recharge or upgrade to premium membership to continue.';
  static const String _errorEmptyContent = 'Generated content is empty';
  static const String _errorInvalidResponse = 'Invalid API response format: ';
  static const String _errorRequestFailed = 'API request failed: ';
  static const String _errorEmptyImageUrl = 'Generated image URL is empty';

  ChatGLMService(this._ref);

  Future<bool> _checkAndDeductBalance(int amount) async {
    try {
      // 检查会员状态
      final membershipState = _ref.read(membershipProvider);
      if (membershipState.isValid) {
        dev.log('User is premium member, no balance check needed', name: 'ChatGLMService');
        return true;
      }
      
      // 获取当前余额
      final currentBalance = _ref.read(balanceProvider);
      dev.log('Checking balance - Required: $amount, Current: $currentBalance', name: 'ChatGLMService');
      
      if (currentBalance < amount) {
        dev.log('Insufficient balance', name: 'ChatGLMService');
        return false;
      }

      // 扣除余额
      final balanceNotifier = _ref.read(balanceProvider.notifier);
      final result = await balanceNotifier.deductBalance(amount);
      dev.log('Balance deduction result: $result', name: 'ChatGLMService');
      return result;
    } catch (e) {
      dev.log('Error in _checkAndDeductBalance: $e', name: 'ChatGLMService');
      return false;
    }
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
    final subscriptionIds = ['loungeplusweek_13', 'loyoo.monthly.com'];
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
    // Check and deduct coins (text generation costs 1 coin)
    final hasEnoughBalance = await _checkAndDeductBalance(_textGenerationCost);
    if (!hasEnoughBalance) {
      throw Exception(_errorInsufficientBalance);
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
    // Check and deduct coins (image generation costs 5 coins)
    final hasEnoughBalance = await _checkAndDeductBalance(_imageGenerationCost);
    if (!hasEnoughBalance) {
      throw Exception(_errorInsufficientBalance);
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
            throw Exception(_errorEmptyImageUrl);
          }
          return imageUrl;
        } else {
          throw Exception('$_errorInvalidResponse${response.body}');
        }
      } else {
        throw Exception('$_errorRequestFailed${response.statusCode} - ${response.body}');
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
    try {
      // 检查并扣除余额
      final hasEnoughBalance = await _checkAndDeductBalance(_chatCost);
      if (!hasEnoughBalance) {
        dev.log('Insufficient balance for chat', name: 'ChatGLMService');
        throw Exception(_errorInsufficientBalance);
      }

      dev.log('Balance check passed, proceeding with chat', name: 'ChatGLMService');
      
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
          return content ?? _errorEmptyContent;
        } else {
          throw Exception('$_errorInvalidResponse${response.body}');
        }
      } else {
        throw Exception('$_errorRequestFailed${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      dev.log('Chat error: $e', name: 'ChatGLMService');
      rethrow;
    }
  }
} 