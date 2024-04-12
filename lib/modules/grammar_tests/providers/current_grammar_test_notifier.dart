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
  CurrentGrammarTest build() => const CurrentGrammarTest();

  void checkAnswer() {
    if (state.test == null) return;

    assert(state.answers.isNotEmpty, 'Answer must be selected!');

    state = state.copyWith(
      status: CurrentGrammarTestStatus.checking,
    );
  }

  void completeCheckAnswer() {
    if (state.test == null) return;

    state = state.copyWith(
      status: CurrentGrammarTestStatus.process,
    );
  }

  void fail() => _setNextTest(GrammarTestStatus.failed);

  void pass() => _setNextTest(GrammarTestStatus.passed);
  void reset() {
    if (state.test == null) return;

    state = state.copyWith(
      answers: [],
      status: CurrentGrammarTestStatus.process,
    );
  }

  void selectVariant(int index) {
    if (state.test == null) return;

    List<int> answers = [...state.answers];

    switch (state.test!.type) {
      case GrammarTestType.comma:
        answers = answers.contains(index)
            ? answers.where((e) => e != index).toList()
            : [index, ...answers];
      case GrammarTestType.accent:
      case GrammarTestType.swipe:
        answers = [index];
    }

    state = state.copyWith(answers: answers);
  }

  void setTest(CurrentGrammarTest data) => state = data;

  void skip() => _setNextTest(GrammarTestStatus.skipped);

  void _setNextTest(GrammarTestStatus curTestStatus) {
    if (state.test == null) return;

    ref
        .read(grammarTestsNotifierProvider.notifier)
        .changeTestStatus(state.index!, curTestStatus);

    final newIndex = state.index! + 1;

    final test = ref
        .read(grammarTestsNotifierProvider.notifier)
        .getTestByIndex(newIndex);

    if (test == null) return;

    state = CurrentGrammarTest(
      test: test,
      index: newIndex,
      combo: curTestStatus.isPassed ? state.combo + 1 : 0,
    );

    final testsLength =
        ref.read(grammarTestsNotifierProvider).valueOrNull?.length ?? 0;
    final leftTestsCount = testsLength - newIndex;

    if (leftTestsCount < 4) {
      ref.read(grammarTestsNotifierProvider.notifier).fetchNextTests();
    }
  }
}
