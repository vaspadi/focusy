import 'package:focusy/core/enums/grammar_test_status.dart';
import 'package:focusy/core/models/grammar_test.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'accent_tests_repository_provider.dart';

part 'accent_tests_notifier.g.dart';

@riverpod
class AccentTestNotifier extends _$AccentTestNotifier {
  @override
  FutureOr<List<GrammarTest>> build() {
    final repository = ref.watch(accentTestsRepositoryProvider);
    return repository.fetchAccentTests();
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
