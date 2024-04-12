import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/current_grammar_test_notifier.dart';

class AccentTestWord extends ConsumerWidget {
  const AccentTestWord({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final currentTest = ref.watch(currentGrammarTestNotifierProvider);
    final currentTestNotifier =
        ref.read(currentGrammarTestNotifierProvider.notifier);

    if (currentTest.test == null) return const SizedBox.shrink();

    final isChecking = currentTest.status.isChecking;

    return Container(
      alignment: Alignment.bottomCenter,
      // height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: currentTest.test!.toSpans().map((e) {
          if (!e.isVariant) {
            return FText(
              e.text,
              type: FTextType.word,
            );
          }

          final isAnswer = currentTest.answers.contains(e.value);

          return Column(
            // clipBehavior: Clip.none,
            // alignment: Alignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              FSquareIconButton(
                disabled: isChecking,
                iconData: Icons.stacked_line_chart_sharp,
                onPressed: () => currentTestNotifier.selectVariant(e.value),
                style: () {
                  if (!isAnswer) {
                    return FAnswerButtonStyle.normal;
                  }

                  if (isChecking) {
                    if (currentTest.answerIsCorrect) {
                      return FAnswerButtonStyle.success;
                    }

                    return FAnswerButtonStyle.error;
                  }

                  return FAnswerButtonStyle.selected;
                }(),
              ),
              FText(
                e.text,
                type: FTextType.word,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
