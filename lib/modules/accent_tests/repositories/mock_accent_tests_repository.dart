import 'package:focusy/core/models/grammar_test.dart';

import '../interfaces/i_accent_tests_repository.dart';

class MockAccentTestsRepository implements IAccentTestsRepository {
  @override
  Future<List<GrammarTest>> fetchAccentTests() async {
    // await Future.delayed(const Duration(seconds: 1));

    return const [
      GrammarTest(
        word: 'аэропорты',
        variants: [0, 1, 5],
        correct: [0, 5],
      ),
      GrammarTest(
        word: 'банты',
        variants: [1, 4],
        correct: [1],
      ),
      GrammarTest(
        word: 'бороду',
        variants: [1, 3, 5],
        correct: [1],
      ),
      GrammarTest(
        word: 'бухгалтеров',
        variants: [4],
        correct: [4],
      ),
      GrammarTest(
        word: 'вероисповедание',
        variants: [9],
        correct: [9],
      ),
      GrammarTest(
        word: 'водопровод',
        variants: [8],
        correct: [8],
      ),
      GrammarTest(
        word: 'газопровод',
        variants: [8],
        correct: [8],
      ),
      GrammarTest(
        word: 'гражданство',
        variants: [5],
        correct: [5],
      ),
      GrammarTest(
        word: 'дефис',
        variants: [3],
        correct: [3],
      ),
      GrammarTest(
        word: 'дешевизна',
        variants: [5],
        correct: [5],
      ),
      GrammarTest(
        word: 'диспансер',
        variants: [7],
        correct: [7],
      ),
      GrammarTest(
        word: 'договоренность',
        variants: [7],
        correct: [7],
      ),
      GrammarTest(
        word: 'документ',
        variants: [5],
        correct: [5],
      ),
      GrammarTest(
        word: 'досуг',
        variants: [3],
        correct: [3],
      ),
      GrammarTest(
        word: 'еретик',
        variants: [4],
        correct: [4],
      ),
      GrammarTest(
        word: 'жалюзи',
        variants: [5],
        correct: [5],
      ),
    ];
  }

  @override
  Future<List<GrammarTest>> fetchCommaTests() async {
    return [
      GrammarTest(
        word:
            'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
        variants: [0, 1, 3, 5],
        correct: [0, 5],
      ),
      GrammarTest(
        word: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
        variants: [1, 4, 6],
        correct: [4],
      ),
      GrammarTest(
        word: 'Озеро остались позади, когда грузовик свернул к деревне.',
        variants: [0, 2, 3],
        correct: [2],
      ),
    ];
  }
}
