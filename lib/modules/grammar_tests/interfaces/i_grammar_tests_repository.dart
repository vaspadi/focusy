import '../models/grammar_test.dart';

abstract class IGrammarTestsRepository {
  Future<List<GrammarTest>> fetchAccentTests();
  Future<List<GrammarTest>> fetchCommaTests();
  Future<List<GrammarTest>> fetchSwipeTests();
}
