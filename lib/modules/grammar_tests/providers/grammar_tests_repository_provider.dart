import 'package:focusy/modules/http_client/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interfaces/i_grammar_tests_repository.dart';
import '../repositories/grammar_tests_repository.dart';

part 'grammar_tests_repository_provider.g.dart';

@riverpod
IGrammarTestsRepository grammarTestsRepository(GrammarTestsRepositoryRef ref) {
  final httpClient = ref.watch(httpClientProvider);
  return GrammarTestsRepository(httpClient);
}
