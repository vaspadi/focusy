import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/core/widgets/ui/enums/answer_button_style.dart';
import 'package:focusy/modules/accent_tests/providers/current_accent_test_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommaTestProposal extends ConsumerWidget {
  const CommaTestProposal({super.key});

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
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: currentTest.test.word
            .split(' ')
            .asMap()
            .entries
            .fold<List<Widget>>([], (acc, entry) {
          final index = entry.key;
          final e = entry.value;
          final isVariant = e.contains(',');
          final isAnswer = currentTest.answers.contains(index);

          // if (!isVariant) {
          return [
            ...acc,
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: FColors.touchable),
                ),
              ),
              child: FText(
                isVariant ? e.substring(0, e.length - 1) : '$e ',
                height: 1.8,
              ),
            ),
            if (isVariant)
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(),
                )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  child: FSquareIconButton(
                    disabled: isChecking,
                    iconData: Icons.stacked_line_chart_sharp,
                    onPressed: () => currentTestNotifier.selectVariant(index),
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
                ),
              ),
          ];
          // }

          // final isAnswer = currentTest.answers.contains(e.value);

          // return Stack(
          //   clipBehavior: Clip.none,
          //   alignment: Alignment.center,
          //   children: [
          //     Column(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         const SizedBox(height: 40),
          //         FText(
          //           e.text,
          //           type: FTextType.word,
          //         ),
          //       ],
          //     ),
          //     Positioned(
          //       top: 0,
          //       child: FSquareIconButton(
          //         disabled: isChecking,
          //         iconData: Icons.stacked_line_chart_sharp,
          //         onPressed: () => currentTestNotifier.selectVariant(e.value),
          //         style: () {
          //           if (!isAnswer) {
          //             return FAnswerButtonStyle.normal;
          //           }

          //           if (isChecking) {
          //             if (currentTest.answerIsCorrect) {
          //               return FAnswerButtonStyle.success;
          //             }

          //             return FAnswerButtonStyle.error;
          //           }

          //           return FAnswerButtonStyle.selected;
          //         }(),
          //       ),
          //     ),
          //   ],
          // );
        }).toList(),
      ),
    );
  }
}
