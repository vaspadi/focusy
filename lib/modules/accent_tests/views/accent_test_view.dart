import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/spacing.dart';
import 'package:focusy/modules/accent_tests/models/current_accent_test_data.dart';
import 'package:focusy/modules/accent_tests/providers/current_accent_test_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/accent_tests_notifier.dart';
import '../widgets/accent_test_word.dart';

@RoutePage()
class AccentTestView extends HookConsumerWidget {
  const AccentTestView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final tests = ref.watch(accentTestNotifierProvider);
    final testsNotifier = ref.watch(accentTestNotifierProvider.notifier);
    final currentTest = ref.watch(currentAccentTestNotifierProvider);
    final currentTestNotifier =
        ref.read(currentAccentTestNotifierProvider.notifier);

    final isProcess = currentTest?.status.isProcess ?? false;
    final isChecking = currentTest?.status.isChecking ?? false;
    final answerIsCorrect = currentTest?.answerIsCorrect ?? false;

    ref.listen(accentTestNotifierProvider, (prev, next) {
      if (prev?.valueOrNull == null &&
          (next.valueOrNull?.isNotEmpty ?? false) &&
          currentTest?.test == null) {
        currentTestNotifier.setTest(
          CurrentAccentTestData(
            test: next.value![0],
            index: 0,
          ),
        );
      }
    });

    return FScaffold(
      appBar: const AppBarOfTest(),
      isLoading: tests.isLoading || currentTest == null,
      body: const Column(
        children: [
          ViewHeader(
            title: 'Поставь ударение',
            subtitle: 'Выбери из предложенных вариантов верный',
          ),
          Spacer(),
          AccentTestWord(),
          Spacer(),
          Spacer(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isProcess)
            FButton(
              text: 'Проверить',
              disabled: !(currentTest?.hasAnswer ?? false),
              onPressed: () => currentTestNotifier.checkAnswer(),
            )
          else if (answerIsCorrect)
            FButton(
              text: 'Далее',
              onPressed: () => currentTestNotifier.pass(),
            )
          else
            FButton(
              text: 'Попробовать еще',
              onPressed: () => currentTestNotifier.reset(),
            ),
          FSpacing.verticalButtons,
          FButton(
            text: 'Пропустить вопрос',
            disabled: isChecking && answerIsCorrect,
            onPressed: () => currentTestNotifier.skip(),
            style: FButtonStyle.light,
          ),
        ],
      ),
    );
  }
}
