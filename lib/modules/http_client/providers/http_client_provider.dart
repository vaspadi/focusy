import 'package:focusy/modules/http_client/http_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interfaces/i_http_client.dart';
import '../models/http_client_config.dart';

part 'http_client_provider.g.dart';

@Riverpod(keepAlive: true)
IHttpClient httpClient(HttpClientRef ref) {
  return HttpClient(
    const HttpClientConfig(
      baseUrl: 'http://devopn.ru:1234',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
      sendTimeout: Duration(seconds: 5),
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Accept': 'application/json',
      },
    ),
  );
}
