import 'package:focusy/modules/grammar_tests/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../enums/grammar_test_type.dart';

part 'grammar_tests_notifier.g.dart';

@riverpod
class GrammarTestsNotifier extends _$GrammarTestsNotifier {
  @override
  FutureOr<List<GrammarTest>> build(GrammarTestType type) {
    final repository = ref.watch(grammarTestsRepositoryProvider);
    switch (type) {
      case GrammarTestType.accent:
        return repository.fetchAccentTests();
      case GrammarTestType.comma:
        return repository.fetchCommaTests();
      case GrammarTestType.swipe:
        return repository.fetchSwipeTests();
    }
  }

  void changeTestStatus(int index, GrammarTestStatus status) {
    if (!_checkTestsAvailable()) return;

    final testsCopy = [...state.value!];
    testsCopy[index] = testsCopy[index].copyWith(status: status);
    state = AsyncData(testsCopy);
  }

  List<GrammarTest> getNotPassedTests() =>
      _getFilteredTestsByStatus((st) => st.isNotPassed);

  List<GrammarTest> getPassedTests() =>
      _getFilteredTestsByStatus((st) => st.isPassed);

  List<GrammarTest> getSkippedTests() =>
      _getFilteredTestsByStatus((st) => st.isSkipped);

  GrammarTest? getTestByIndex(int index) {
    if (!_checkTestsAvailable()) return null;

    return state.value![index];
  }

  bool _checkTestsAvailable() {
    final isAvailable = state.hasValue && !state.hasError && !state.isLoading;

    assert(
      isAvailable,
      'Не возможно работать с тестами: либо их нет, '
      'либо есть ошибка, либо они обновляются!',
    );

    return isAvailable;
  }

  List<GrammarTest> _getFilteredTestsByStatus(
    bool Function(GrammarTestStatus st) filter,
  ) {
    return (state.valueOrNull ?? []).where((e) => filter(e.status)).toList();
  }
}
