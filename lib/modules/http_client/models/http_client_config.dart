class HttpClientConfig {
  final String baseUrl;
  final Duration? connectTimeout;
  final Duration? receiveTimeout;
  final Duration? sendTimeout;
  final Map<String, dynamic>? headers;

  const HttpClientConfig({
    required this.baseUrl,
    this.connectTimeout,
    this.receiveTimeout,
    this.sendTimeout,
    this.headers,
  });
}
