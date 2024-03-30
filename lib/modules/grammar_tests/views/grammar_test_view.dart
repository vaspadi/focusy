import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/spacing.dart';
import 'package:focusy/modules/grammar_tests/widgets/comma_test_proposal.dart';
import 'package:focusy/modules/grammar_tests/widgets/swipe_test_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/grammar_test_type.dart';
import '../models/current_grammar_test.dart';
import '../providers/current_grammar_test_notifier.dart';
import '../providers/grammar_tests_notifier.dart';
import '../widgets/accent_test_word.dart';
import '../widgets/progress_app_bar.dart';

@RoutePage()
class GrammarTestView extends HookConsumerWidget {
  final String title;
  final String? subtitle;
  final GrammarTestType type;

  const GrammarTestView({
    required this.title,
    required this.type,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final tests = ref.watch(grammarTestsNotifierProvider(type));
    final currentTest = ref.watch(currentGrammarTestNotifierProvider);
    final currentTestNotifier =
        ref.read(currentGrammarTestNotifierProvider.notifier);

    final isProcess = currentTest?.status.isProcess ?? false;
    final isChecking = currentTest?.status.isChecking ?? false;
    final answerIsCorrect = currentTest?.answerIsCorrect ?? false;
    final swipeController = useState(AppinioSwiperController());

    ref.listen(grammarTestsNotifierProvider(type), (prev, next) {
      if (prev?.valueOrNull == null &&
          (next.valueOrNull?.isNotEmpty ?? false) &&
          currentTest?.test == null) {
        currentTestNotifier.setTest(
          CurrentGrammarTest(
            test: next.value![0],
            index: 0,
            type: type,
          ),
        );
      }
    });

    return FScaffold(
      appBar: const ProgressAppBar(),
      isLoading: tests.isLoading || currentTest == null,
      body: Column(
        children: [
          ViewHeader(
            title: title,
            subtitle: subtitle,
          ),
          const Spacer(),
          // _getQuestion(),
          () {
            switch (type) {
              case GrammarTestType.accent:
                return const AccentTestWord();
              case GrammarTestType.comma:
                return const CommaTestProposal();
              case GrammarTestType.swipe:
                return SwipeTestCard(
                  controller: swipeController.value,
                );
            }
          }(),
          const Spacer(),
          const Spacer(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!type.isSwipe)
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
          if (!type.isSwipe) FSpacing.verticalButtons,
          FButton(
            text: 'Пропустить вопрос',
            disabled: isChecking && answerIsCorrect,
            onPressed: () {
              switch (type) {
                case GrammarTestType.swipe:
                  swipeController.value.swipeDown();
                case GrammarTestType.accent:
                case GrammarTestType.comma:
                  currentTestNotifier.skip();
              }
            },
            style: FButtonStyle.light,
          ),
        ],
      ),
    );
  }
}
