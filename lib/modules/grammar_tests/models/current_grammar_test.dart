import 'package:focusy/modules/grammar_tests/enums/current_grammar_test_status.dart';
import 'package:focusy/modules/grammar_tests/models/grammar_test.dart';

import '../enums/grammar_test_type.dart';

class CurrentGrammarTest {
  final GrammarTest test;
  final GrammarTestType type;
  final int index;
  final List<int> answers;
  final CurrentGrammarTestStatus status;

  const CurrentGrammarTest({
    required this.test,
    required this.type,
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

  CurrentGrammarTest copyWith({
    GrammarTest? test,
    GrammarTestType? type,
    int? index,
    List<int>? answers,
    CurrentGrammarTestStatus? status,
  }) {
    final result = CurrentGrammarTest(
      test: test ?? this.test,
      type: type ?? this.type,
      index: index ?? this.index,
      answers: answers ?? this.answers,
      status: status ?? this.status,
    );

    return result;
  }
}
