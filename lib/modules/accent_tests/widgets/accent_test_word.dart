import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/modules/accent_tests/providers/current_accent_test_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccentTestWord extends ConsumerWidget {
  const AccentTestWord({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final currentTest = ref.watch(currentAccentTestNotifierProvider);
    final currentTestNotifier =
        ref.read(currentAccentTestNotifierProvider.notifier);

    if (currentTest == null) return const SizedBox.shrink();

    final isChecking = currentTest.status.isChecking;

    return Container(
      alignment: Alignment.bottomCenter,
      height: 100,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: currentTest.test.toSpans().map((e) {
          // final isCorrect = isAnswer &&

          if (!e.isVariant) {
            return FText(
              e.text,
              type: FTextType.word,
            );
          }

          final isAnswer = currentTest.answer == e.value;

          return Stack(
            clipBehavior: Clip.none,
            children: [
              FText(
                e.text,
                type: FTextType.word,
              ),
              FSquareIconButton(
                disabled: isChecking,
                iconData: Icons.stacked_line_chart_sharp,
                onPressed: () => currentTestNotifier.selectVariant(e.value),
                style: () {
                  if (!isAnswer) {
                    return FSquareIconButtonStyle.normal;
                  }

                  if (isChecking) {
                    if (currentTest.answerIsCorrect) {
                      return FSquareIconButtonStyle.success;
                    }

                    return FSquareIconButtonStyle.error;
                  }

                  return FSquareIconButtonStyle.selected;
                }(),
                // isAnswer
                //     ? FSquareIconButtonStyle.selected
                //     : FSquareIconButtonStyle.normal,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
