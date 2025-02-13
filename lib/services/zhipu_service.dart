import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer' as dev;
import '../config/chatglm_config.dart';

class ZhipuService {
  final String _apiKey = ChatGLMConfig.apiKey;
  final String _baseUrl = 'https://open.bigmodel.cn/api/paas/v3/model-api/chatglm_turbo/invoke';

  Future<String> generateContent(String prompt) async {
    try {
      dev.log('Preparing to call Zhipu API', name: 'ZhipuService');
      
      final headers = {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      };

      final body = jsonEncode({
        'messages': [
          {
            'role': 'user',
            'content': prompt,
          }
        ],
        'temperature': 0.7,
        'top_p': 0.7,
        'request_id': DateTime.now().millisecondsSinceEpoch.toString(),
      });

      dev.log('Sending request to Zhipu API', name: 'ZhipuService', error: 'Request Body: $body');

      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: headers,
        body: body,
      );

      dev.log('Received API response', name: 'ZhipuService', error: 'Status Code: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        dev.log('API response data', name: 'ZhipuService', error: 'Response: $responseData');
        
        if (responseData['data'] != null && 
            responseData['data']['choices'] != null && 
            responseData['data']['choices'].isNotEmpty &&
            responseData['data']['choices'][0]['message'] != null) {
          final message = responseData['data']['choices'][0]['message'];
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
        name: 'ZhipuService',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
} 