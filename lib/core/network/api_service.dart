import 'package:dio/dio.dart';

class ApiService {
  static const String _baseUrl =
      'https://www.ipqualityscore.com'; // Your API base URL
  static const String MALICIOUS_URL_DETECTION =
      "/api/json/url/2uzHVE1KVfkjJdNCTaufBRlc6In2ikYG/";
  final Dio _dio = Dio(); // Create Dio instance

  // Singleton pattern to ensure only one instance of ApiService is created
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(
        _baseUrl + path,
        queryParameters: queryParameters,
      );
      return response;
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      final response = await _dio.post(
        _baseUrl + path,
        data: data,
      );
      return response;
    } catch (error) {
      throw Exception('Failed to post data: $error');
    }
  }

  // Add more methods for different HTTP methods as needed
}
