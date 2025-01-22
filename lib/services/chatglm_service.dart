import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer' as dev;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/chatglm_config.dart';

final chatGLMServiceProvider = Provider((ref) => ChatGLMService(ref));

class ChatGLMService {
  final String _apiKey = ChatGLMConfig.apiKey;
  final String _baseUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';
  final String _imageUrl = 'https://open.bigmodel.cn/api/paas/v4/images/generations';
  final ProviderRef _ref;

  ChatGLMService(this._ref);

  Future<String> generateContent(String prompt) async {
    try {
      dev.log('准备调用智谱API', name: 'ChatGLMService');
      return await chat([{'role': 'user', 'content': prompt}]);
    } catch (e, stackTrace) {
      dev.log(
        'API调用错误',
        name: 'ChatGLMService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<String> generateImage(String prompt) async {
    try {
      dev.log('准备调用智谱图片生成API', name: 'ChatGLMService');
      
      final headers = {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      };

      final body = jsonEncode({
        'model': 'cogview-3', // 使用 cogview-3 模型
        'prompt': prompt,
        'n': 1, // 生成一张图片
        'size': '1024x1024', // 图片尺寸
        'quality': 'standard', // 图片质量
        'style': 'vivid', // 图片风格
        'request_id': DateTime.now().millisecondsSinceEpoch.toString(),
      });

      dev.log('发送图片生成请求', name: 'ChatGLMService', error: 'Request Body: $body');

      final response = await http.post(
        Uri.parse(_imageUrl),
        headers: headers,
        body: body,
      );

      dev.log('收到图片生成响应', name: 'ChatGLMService', error: 'Status Code: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        dev.log('图片生成响应数据', name: 'ChatGLMService', error: 'Response: $responseData');
        
        if (responseData['data'] != null && responseData['data'].isNotEmpty) {
          final imageUrl = responseData['data'][0]['url'];
          if (imageUrl == null) {
            throw Exception('生成的图片URL为空');
          }
          return imageUrl;
        } else {
          throw Exception('API返回数据格式不正确: ${response.body}');
        }
      } else {
        throw Exception('API请求失败: ${response.statusCode} - ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.log(
        '图片生成错误',
        name: 'ChatGLMService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<String> chat(List<Map<String, String>> messages) async {
    try {
      dev.log('准备调用智谱API chat', name: 'ChatGLMService');
      
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

      dev.log('发送请求到智谱API', name: 'ChatGLMService', error: 'Request Body: $body');

      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: headers,
        body: body,
      );

      dev.log('收到API响应', name: 'ChatGLMService', error: 'Status Code: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        dev.log('API响应数据', name: 'ChatGLMService', error: 'Response: $responseData');
        
        if (responseData['choices'] != null && 
            responseData['choices'].isNotEmpty &&
            responseData['choices'][0]['message'] != null) {
          final message = responseData['choices'][0]['message'];
          final content = message['content'];
          return content ?? '生成内容为空';
        } else {
          throw Exception('API返回数据格式不正确: ${response.body}');
        }
      } else {
        throw Exception('API请求失败: ${response.statusCode} - ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.log(
        'API调用错误',
        name: 'ChatGLMService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
} 