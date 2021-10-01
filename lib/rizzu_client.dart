// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';

enum ApiMethod { GET, POST, PUT, DELETE }

class RizzuClient {
  static RizzuClient _instance({
    required String baseUrl,
    String? contentType,
    Map<String, dynamic>? headers,
  }) =>
      RizzuClient._create(
        baseUrl: baseUrl,
        contentType: contentType,
        headers: headers,
      );

  static Dio _dio = Dio();

  RizzuClient._create({
    required String baseUrl,
    String? contentType,
    Map<String, dynamic>? headers,
  }) {
    initApi(baseUrl, contentType, headers);
  }

  factory RizzuClient({
    required String baseUrl,
    String? contentType,
    Map<String, dynamic>? headers,
  }) =>
      _instance(baseUrl: baseUrl, contentType: contentType, headers: headers);

  void initApi(String baseUrl, String? contentType, Map<String, dynamic>? headers) async {
    // Set the header: Basic Auth
    // new Dio with a BaseOptions instance.
    var options = BaseOptions(
      contentType: contentType ?? 'application/json',
      followRedirects: true,
      headers: headers ?? {},
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    );

    _dio = Dio(options);
  }

  /// [call] method make the ApiService callable
  /// You can call the method as: api('/path')
  /// [method] default is GET
  Future<dynamic> call(
    String path, {
    Map<String, dynamic>? params,
    ApiMethod method = ApiMethod.GET,
  }) async {
    try {
      Response response;

      switch (method) {
        case ApiMethod.GET:
          response = await _dio.get(path);
          break;
        case ApiMethod.POST:
          response = await _dio.post(path, data: params);
          break;
        case ApiMethod.PUT:
          response = await _dio.put(path, data: params);
          break;
        case ApiMethod.DELETE:
          response = await _dio.delete(
            path,
          );
          break;
      }

      if (response.statusCode == 200) {
        return response.data ?? true;
      }
    } on DioError catch (e) {
      throw 'error ${e.response?.statusCode}';
    } catch (e) {
      throw 'generic error';
    } finally {}

    return null;
  }
}
