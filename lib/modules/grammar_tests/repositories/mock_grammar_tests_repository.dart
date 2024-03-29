import '../interfaces/I_grammar_tests_repository.dart';
import '../models/grammar_test.dart';

class MockGrammarTestsRepository implements IGrammarTestsRepository {
  @override
  Future<List<GrammarTest>> fetchAccentTests() async {
    // await Future.delayed(const Duration(seconds: 1));

    return const [
      GrammarTest(
        text: 'аэропорты',
        variants: [0, 1, 5],
        correct: [0, 5],
      ),
      GrammarTest(
        text: 'банты',
        variants: [1, 4],
        correct: [1],
      ),
      GrammarTest(
        text: 'бороду',
        variants: [1, 3, 5],
        correct: [1],
      ),
      GrammarTest(
        text: 'бухгалтеров',
        variants: [4],
        correct: [4],
      ),
      GrammarTest(
        text: 'вероисповедание',
        variants: [9],
        correct: [9],
      ),
      GrammarTest(
        text: 'водопровод',
        variants: [8],
        correct: [8],
      ),
      GrammarTest(
        text: 'газопровод',
        variants: [8],
        correct: [8],
      ),
      GrammarTest(
        text: 'гражданство',
        variants: [5],
        correct: [5],
      ),
      GrammarTest(
        text: 'дефис',
        variants: [3],
        correct: [3],
      ),
      GrammarTest(
        text: 'дешевизна',
        variants: [5],
        correct: [5],
      ),
      GrammarTest(
        text: 'диспансер',
        variants: [7],
        correct: [7],
      ),
      GrammarTest(
        text: 'договоренность',
        variants: [7],
        correct: [7],
      ),
      GrammarTest(
        text: 'документ',
        variants: [5],
        correct: [5],
      ),
      GrammarTest(
        text: 'досуг',
        variants: [3],
        correct: [3],
      ),
      GrammarTest(
        text: 'еретик',
        variants: [4],
        correct: [4],
      ),
      GrammarTest(
        text: 'жалюзи',
        variants: [5],
        correct: [5],
      ),
    ];
  }

  @override
  Future<List<GrammarTest>> fetchCommaTests() async {
    return const [
      GrammarTest(
        text:
            'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
        variants: [0, 1, 3, 5],
        correct: [0, 5],
      ),
      GrammarTest(
        text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
        variants: [1, 4, 6],
        correct: [4],
      ),
      GrammarTest(
        text: 'Озеро остались позади, когда грузовик свернул к деревне.',
        variants: [0, 2, 3],
        correct: [2],
      ),
    ];
  }
}
