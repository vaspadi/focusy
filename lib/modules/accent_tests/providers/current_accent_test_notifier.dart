import 'package:focusy/core/enums/current_grammar_test_status.dart';
import 'package:focusy/core/enums/grammar_test_status.dart';
import 'package:focusy/modules/accent_tests/providers/accent_tests_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/current_accent_test_data.dart';

part 'current_accent_test_notifier.g.dart';

@riverpod
class CurrentAccentTestNotifier extends _$CurrentAccentTestNotifier {
  @override
  CurrentAccentTestData? build() => null;

  void checkAnswer() {
    if (state == null) return;

    assert(state!.answers.isNotEmpty, 'Answer must be selected!');

    state = state!.copyWith(
      status: CurrentGrammarTestStatus.checking,
    );
  }

  void pass() => _setNextTest(GrammarTestStatus.passed);

  void reset() {
    if (state == null) return;

    state = state!.copyWith(
      answer: () => null,
      status: CurrentGrammarTestStatus.process,
    );
  }

  void selectVariant(int index) {
    if (state == null) return;

    List<int> answers = [index, ...state!.answers];

    if (answers.length > state!.necessaryNumberOfAnswers) {
      answers = answers.sublist(0, state!.necessaryNumberOfAnswers);
    }

    state = state!.copyWith(
      answer: () => index,
      answers: answers,
    );
  }

  void setTest(CurrentAccentTestData data) => state = data;

  void skip() => _setNextTest(GrammarTestStatus.skipped);

  void _setNextTest(GrammarTestStatus curTestStatus) {
    if (state == null) return;

    ref
        .read(accentTestNotifierProvider.notifier)
        .changeTestStatus(state!.index, curTestStatus);

    final newIndex = state!.index + 1;

    final test =
        ref.read(accentTestNotifierProvider.notifier).getTestByIndex(newIndex);

    if (test == null) return;

    state = CurrentAccentTestData(
      test: test,
      index: newIndex,
    );
  }
}
