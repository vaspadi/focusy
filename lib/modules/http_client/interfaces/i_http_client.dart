import '../models/http_client_config.dart';

abstract class IHttpClient {
  HttpClientConfig get config;

  // void addInterceptor(Interceptor interceptor);
  // Future<T> delete<T>(
  //   String url, [
  //   Map<String, dynamic>? queryParameters,
  // ]);

  // Future<void> download(
  //   String url,
  //   String savePath, {
  //   ProgressCallback? onReceiveProgress,
  //   Map<String, dynamic>? queryParameters,
  // });

  Future<T> get<T>(
    String url, [
    Map<String, dynamic>? queryParameters,
  ]);

  // Future<T> getBytes<T>(
  //   String url, [
  //   Map<String, dynamic>? queryParameters,
  // ]);

  // Future<T> getUri<T>(
  //   Uri url,
  // );

  Future<T?> post<T>(
    String url,
    dynamic data, [
    Map<String, dynamic>? queryParameters,
  ]);

  Future<T> put<T>(
    String url,
    dynamic data, [
    Map<String, dynamic>? queryParameters,
  ]);

  // Future<Response<T>> request<T>(
  //   String path, {
  //   data,
  //   Map<String, dynamic>? queryParameters,
  //   CancelToken? cancelToken,
  //   Options? options,
  //   ProgressCallback? onSendProgress,
  //   ProgressCallback? onReceiveProgress,
  // });

  // void setLocale(SupportedLocale locale);

  // void tryThrowErrors(dynamic response);
}
