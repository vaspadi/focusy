import 'package:focusy/modules/grammar_tests/enums/current_grammar_test_status.dart';

import 'grammar_test.dart';

class CurrentGrammarTest {
  final GrammarTest? test;
  final int? index;
  final List<int> answers;
  final CurrentGrammarTestStatus status;
  final int combo;

  const CurrentGrammarTest({
    this.test,
    this.index,
    this.answers = const [],
    this.status = CurrentGrammarTestStatus.process,
    this.combo = 0,
  });

  bool get answerIsCorrect {
    final correctCopy = [...test?.correct ?? []];
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
  int get necessaryNumberOfAnswers => (test?.correct ?? []).length;

  CurrentGrammarTest copyWith({
    GrammarTest? test,
    int? index,
    List<int>? answers,
    CurrentGrammarTestStatus? status,
    int? combo,
  }) {
    return CurrentGrammarTest(
      test: test ?? this.test,
      index: index ?? this.index,
      answers: answers ?? this.answers,
      status: status ?? this.status,
      combo: combo ?? this.combo,
    );
  }
}
