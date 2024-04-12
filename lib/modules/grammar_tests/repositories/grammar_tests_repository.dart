// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:focusy/modules/grammar_tests/models/grammar_test.dart';
import 'package:focusy/modules/http_client/interfaces/i_http_client.dart';

import '../interfaces/i_grammar_tests_repository.dart';
import '../models/grammar_tests_request.dart';

class GrammarTestsRepository implements IGrammarTestsRepository {
  @override
  final IHttpClient httpClient;

  const GrammarTestsRepository(this.httpClient);

  @override
  Future<List<GrammarTest>> fetchGrammarTests(
    GrammarTestsRequest request,
  ) async {
    final response = await httpClient.get('/questions', request.toJson());

    final result = (response as List)
        .map((e) => GrammarTest.fromJson(e as Map<String, dynamic>))
        .toList();
    return result;
  }
}
