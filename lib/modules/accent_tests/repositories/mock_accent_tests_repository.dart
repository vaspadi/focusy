import 'package:focusy/core/models/grammar_test.dart';

import '../interfaces/i_accent_tests_repository.dart';

class MockAccentTestsRepository implements IAccentTestsRepository {
  @override
  Future<List<GrammarTest>> fetchAccentTests() async {
    // await Future.delayed(const Duration(seconds: 1));

    return const [
      GrammarTest(
        word: 'аэропорты',
        variants: [1, 5],
        correct: 5,
      ),
      GrammarTest(
        word: 'банты',
        variants: [1, 4],
        correct: 1,
      ),
      GrammarTest(
        word: 'бороду',
        variants: [1, 3, 5],
        correct: 1,
      ),
      GrammarTest(
        word: 'бухгалтеров',
        variants: [4],
        correct: 4,
      ),
      GrammarTest(
        word: 'вероисповедание',
        variants: [9],
        correct: 9,
      ),
      GrammarTest(
        word: 'водопровод',
        variants: [8],
        correct: 8,
      ),
      GrammarTest(
        word: 'газопровод',
        variants: [8],
        correct: 8,
      ),
      GrammarTest(
        word: 'гражданство',
        variants: [5],
        correct: 5,
      ),
      GrammarTest(
        word: 'дефис',
        variants: [3],
        correct: 3,
      ),
      GrammarTest(
        word: 'дешевизна',
        variants: [5],
        correct: 5,
      ),
      GrammarTest(
        word: 'диспансер',
        variants: [7],
        correct: 7,
      ),
      GrammarTest(
        word: 'договоренность',
        variants: [7],
        correct: 7,
      ),
      GrammarTest(
        word: 'документ',
        variants: [5],
        correct: 5,
      ),
      GrammarTest(
        word: 'досуг',
        variants: [3],
        correct: 3,
      ),
      GrammarTest(
        word: 'еретик',
        variants: [4],
        correct: 4,
      ),
      GrammarTest(
        word: 'жалюзи',
        variants: [5],
        correct: 5,
      ),
    ];
  }
}
