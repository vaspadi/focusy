import 'package:focusy/modules/grammar_tests/models/grammar_tests_request.dart';
import 'package:focusy/modules/http_client/index.dart';

import '../models/grammar_test.dart';

abstract class IGrammarTestsRepository {
  IHttpClient get httpClient;

  Future<List<GrammarTest>> fetchGrammarTests(GrammarTestsRequest request);
}
