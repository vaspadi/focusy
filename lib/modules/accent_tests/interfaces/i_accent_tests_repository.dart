import 'package:focusy/modules/grammar_tests/models/grammar_test.dart';

abstract class IAccentTestsRepository {
  Future<List<GrammarTest>> fetchAccentTests();
  Future<List<GrammarTest>> fetchCommaTests();
}
