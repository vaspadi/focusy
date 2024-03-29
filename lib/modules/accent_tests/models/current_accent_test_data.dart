import 'package:focusy/core/enums/current_grammar_test_status.dart';
import 'package:focusy/core/models/grammar_test.dart';

class CurrentAccentTestData {
  final GrammarTest test;
  final int index;
  final List<int> answers;
  final CurrentGrammarTestStatus status;

  const CurrentAccentTestData({
    required this.test,
    required this.index,
    this.answers = const [],
    this.status = CurrentGrammarTestStatus.process,
  });

  bool get answerIsCorrect {
    final correctCopy = [...test.correct];
    final answersCopy = [...answers];

    if (correctCopy.length != answersCopy.length) return false;

    correctCopy.sort();
    answersCopy.sort();

    for (int i = 0; i < answersCopy.length; i++) {
      if (correctCopy[i] != answersCopy[i]) return false;
    }

    return true;
  }

  bool get hasAnswer => answers.isNotEmpty;
  int get necessaryNumberOfAnswers => test.correct.length;

  CurrentAccentTestData copyWith({
    GrammarTest? test,
    int? index,
    int? Function()? answer,
    List<int>? answers,
    int? necessaryNumberOfAnswers,
    CurrentGrammarTestStatus? status,
  }) {
    final result = CurrentAccentTestData(
      test: test ?? this.test,
      index: index ?? this.index,
      answers: answers ?? this.answers,
      status: status ?? this.status,
    );

    return result;
  }
}
