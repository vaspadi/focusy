import 'package:focusy/modules/grammar_tests/enums/current_grammar_test_status.dart';
import 'package:focusy/modules/grammar_tests/enums/grammar_test_status.dart';
import 'package:focusy/modules/grammar_tests/enums/grammar_test_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/current_grammar_test.dart';
import 'grammar_tests_notifier.dart';

part 'current_grammar_test_notifier.g.dart';

@riverpod
class CurrentGrammarTestNotifier extends _$CurrentGrammarTestNotifier {
  @override
  CurrentGrammarTest? build() => null;

  void checkAnswer() {
    if (state == null) return;

    assert(state!.answers.isNotEmpty, 'Answer must be selected!');

    state = state!.copyWith(
      status: CurrentGrammarTestStatus.checking,
    );
  }

  void completeCheckAnswer() {
    if (state == null) return;

    state = state!.copyWith(
      status: CurrentGrammarTestStatus.process,
    );
  }

  void fail() => _setNextTest(GrammarTestStatus.failed);
  void pass() => _setNextTest(GrammarTestStatus.passed);

  void reset() {
    if (state == null) return;

    state = state!.copyWith(
      answers: [],
      status: CurrentGrammarTestStatus.process,
    );
  }

  void selectVariant(int index) {
    if (state == null) return;

    List<int> answers = [...state!.answers];

    switch (state!.type) {
      case GrammarTestType.comma:
        answers = answers.contains(index)
            ? answers.where((e) => e != index).toList()
            : [index, ...answers];
      case GrammarTestType.accent:
      case GrammarTestType.swipe:
        answers = [index];
    }

    state = state!.copyWith(answers: answers);
  }

  void setTest(CurrentGrammarTest data) => state = data;

  void skip() => _setNextTest(GrammarTestStatus.skipped);

  void _setNextTest(GrammarTestStatus curTestStatus) {
    if (state == null) return;

    ref
        .read(grammarTestsNotifierProvider(state!.type).notifier)
        .changeTestStatus(state!.index, curTestStatus);

    final newIndex = state!.index + 1;

    final test = ref
        .read(grammarTestsNotifierProvider(state!.type).notifier)
        .getTestByIndex(newIndex);

    if (test == null) return;

    state = CurrentGrammarTest(
      test: test,
      index: newIndex,
      type: state!.type,
      combo: curTestStatus.isPassed ? state!.combo + 1 : 0,
    );
  }
}
