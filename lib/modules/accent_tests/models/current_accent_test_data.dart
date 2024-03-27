import 'package:focusy/core/enums/current_grammar_test_status.dart';
import 'package:focusy/core/models/grammar_test.dart';

class CurrentAccentTestData {
  final GrammarTest test;
  final int index;
  final int? answer;
  final CurrentGrammarTestStatus status;

  const CurrentAccentTestData({
    required this.test,
    required this.index,
    this.answer,
    this.status = CurrentGrammarTestStatus.process,
  });

  bool get answerIsCorrect => test.correct == answer;
  bool get hasAnswer => answer != null;

  CurrentAccentTestData copyWith({
    GrammarTest? test,
    int? index,
    int? Function()? answer,
    CurrentGrammarTestStatus? status,
  }) {
    final result = CurrentAccentTestData(
      test: test ?? this.test,
      index: index ?? this.index,
      answer: answer == null ? this.answer : answer(),
      status: status ?? this.status,
    );

    return result;
  }
}
