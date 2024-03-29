import 'package:focusy/core/models/grammar_test.dart';

abstract class IAccentTestsRepository {
  Future<List<GrammarTest>> fetchAccentTests();
  Future<List<GrammarTest>> fetchCommaTests();
}
