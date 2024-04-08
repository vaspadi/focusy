import 'package:dio/dio.dart';
import 'package:focusy/modules/http_client/interfaces/i_http_client.dart';
import 'package:focusy/modules/http_client/models/http_client_config.dart';

class HttpClient implements IHttpClient {
  @override
  final HttpClientConfig config;
  late Dio _client;

  HttpClient(this.config) {
    _initDio();
  }

  @override
  Future<T> get<T>(
    String url, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    final response = await _client.get<T>(
      url,
      queryParameters: queryParameters,
    );

    return null is T ? response.data as T : response.data!;
  }

  @override
  Future<T> post<T>(
    String url,
    dynamic data, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    final Response<T> response = await _client.post<T>(
      url,
      data: data,
      queryParameters: queryParameters,
    );

    return null is T ? response.data as T : response.data!;
  }

  @override
  Future<T> put<T>(
    String url,
    data, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    final response = await _client.put<T>(
      url,
      data: data,
      queryParameters: queryParameters,
    );

    return null is T ? response.data as T : response.data!;
  }

  void _initDio() {
    final httpClient = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: config.connectTimeout,
        receiveTimeout: config.receiveTimeout,
        sendTimeout: config.sendTimeout,
        headers: config.headers,
      ),
    );

    _client = httpClient;
  }
}
