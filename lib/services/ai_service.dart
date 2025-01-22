import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class HuggingFaceAPI {
  final Dio _dio;
  final String baseUrl;
  final _logger = Logger();

  HuggingFaceAPI({
    required this.baseUrl,
  }) : _dio = Dio()..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: (obj) => Logger().d(obj),
        ));

  Future<String> getCompletion({
    required String model,
    required String inputs,
    required Map<String, dynamic> parameters,
    required String apiKey,
  }) async {
    try {
      _logger.i('Sending request to HuggingFace API: $model');
      
      final response = await _dio.post(
        '$baseUrl$model',
        data: {
          'inputs': inputs,
          'parameters': parameters,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $apiKey',
            'Content-Type': 'application/json',
          },
        ),
      );

      _logger.d('Response received: ${response.data}');

      if (response.data is List) {
        final List<dynamic> results = response.data;
        if (results.isNotEmpty && results[0] is Map) {
          return results[0]['generated_text'] as String? ?? '';
        }
      }
      
      _logger.w('Unexpected response format: ${response.data}');
      return '';
    } catch (e, stackTrace) {
      _logger.e('API call failed: $e\n$stackTrace');
      throw Exception('Failed to get completion: $e');
    }
  }
} 