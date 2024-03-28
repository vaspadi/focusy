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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: currentTest.test.toSpans().map((e) {
          if (!e.isVariant) {
            return FText(
              e.text,
              type: FTextType.word,
            );
          }

          final isAnswer = currentTest.answer == e.value;

          return Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 40),
                  FText(
                    e.text,
                    type: FTextType.word,
                  ),
                ],
              ),
              Positioned(
                top: 0,
                child: FSquareIconButton(
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
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
