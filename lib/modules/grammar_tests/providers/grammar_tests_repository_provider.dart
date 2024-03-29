import 'package:focusy/modules/grammar_tests/models/grammar_test.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interfaces/I_grammar_tests_repository.dart';
import '../repositories/mock_grammar_tests_repository.dart';

part 'grammar_tests_repository_provider.g.dart';

@riverpod
IGrammarTestsRepository grammarTestsRepository(GrammarTestsRepositoryRef ref) {
  return MockGrammarTestsRepository();
}
