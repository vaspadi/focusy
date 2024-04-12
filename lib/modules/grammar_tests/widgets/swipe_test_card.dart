import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/modules/grammar_tests/enums/swipe_test_answer.dart';
import 'package:focusy/modules/grammar_tests/providers/current_grammar_test_notifier.dart';
import 'package:focusy/modules/grammar_tests/providers/grammar_tests_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SwipeTestCard extends HookConsumerWidget {
  final AppinioSwiperController? controller;
  final int backgroundCardCount;

  const SwipeTestCard({
    this.controller,
    this.backgroundCardCount = 2,
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final tests = ref.watch(grammarTestsNotifierProvider);
    final test = ref.watch(currentGrammarTestNotifierProvider);
    final testNotifier = ref.read(currentGrammarTestNotifierProvider.notifier);

    if (test.test == null) return const SizedBox.shrink();

    final isChecking = test.status.isChecking;
    final answer = test.answers.isEmpty ? null : test.answers[0];
    final answerIsCorrect = test.answerIsCorrect;

    FAnswerButtonStyle getButtonStyle(int value) {
      final isAnswer = answer == value;

      if (!isAnswer) {
        return FAnswerButtonStyle.normal;
      }

      if (isChecking) {
        if (answerIsCorrect) {
          return FAnswerButtonStyle.success;
        }

        return FAnswerButtonStyle.error;
      }

      return FAnswerButtonStyle.selected;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        const backgroundCardTopOffset = 23.0;
        final size = constraints.maxWidth;
        final answerSize = size * 0.21;

        return Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: backgroundCardTopOffset),
                Container(
                  alignment: Alignment.center,
                  // height: MediaQuery.of(context).size.height * 0.5,
                  height: size,
                  child: AppinioSwiper(
                    key: backgroundCardCount == 0
                        ? Key((test.test?.id ?? '').toString())
                        : null,
                    controller: controller,
                    backgroundCardOffset:
                        const Offset(0, -backgroundCardTopOffset),
                    backgroundCardCount: backgroundCardCount,

                    // backgroundCardScale: 1.2,
                    cardCount:
                        backgroundCardCount == 0 ? 1 : tests.value!.length,
                    threshold: 130,
                    swipeOptions: const SwipeOptions.symmetric(
                      horizontal: true,
                      vertical: false,
                    ),
                    onSwipeEnd: (prevIndex, nextIndex, swipe) {
                      // final answerIsDoubleN = answer == SwipeTestAnswer.doubleN;
                      final isRight = swipe.currentOffset.dx > 0;

                      if (prevIndex == nextIndex) {
                        testNotifier.reset();
                        return;
                      }

                      // answerIsDoubleN && isRight
                      // testNotifier.checkAnswer();

                      test.answerIsCorrect
                          ? testNotifier.pass()
                          : testNotifier.fail();
                      // : controller.value.unswipe();
                      // : controller.value.animateTo(
                      //     Offset(10, 10),
                      //     duration: Duration(seconds: 2),
                      //     curve: Curves.linear,
                      //   );
                      //    isRi ?
                      // print(prevIndex == nextIndex ? '111reset' : '111pass');
                    },
                    onUnSwipe: (val) {
                      print('asdf $val');
                    },
                    // onEnd: () {
                    //   print('asdf');
                    // },%
                    onCardPositionChanged: (position) {
                      const selectThreshold = 50;
                      const checkThreshold = 130;

                      final x = position.offset.dx;
                      final isLeft = x < 0;
                      final xModule = x.abs();

                      final isNoneZone = xModule < selectThreshold;
                      final isSelectZone =
                          !isNoneZone && xModule < checkThreshold;
                      final isCheckZone = !isNoneZone & !isSelectZone;

                      final isChecking = test.status.isChecking;
                      final isSelecting = test.answers.isNotEmpty;

                      if (isNoneZone && (isSelecting || isChecking)) {
                        testNotifier.reset();
                      }

                      if (isSelectZone && !isSelecting) {
                        testNotifier.selectVariant(isLeft ? 0 : 1);
                      }

                      if (isSelectZone && isChecking) {
                        testNotifier.completeCheckAnswer();
                      }

                      if (isCheckZone && !isChecking) {
                        testNotifier.checkAnswer();
                      }
                    },
                    // onSwipeCancelled: (v) {
                    //   // direction.value = 'none';
                    //   print('onCancell reset');
                    //   // console.log();
                    //   testNotifier.reset();
                    // },
                    cardBuilder: (BuildContext context, int index) {
                      final test = tests.value![index];

                      return Container(
                        height: size,
                        width: size,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: FColors.back,
                          borderRadius: BorderRadius.all(
                            Radius.circular(size * 0.08),
                          ),
                          border: Border.all(
                            color: FColors.text,
                          ),
                        ),
                        child: FText(
                          test.text,
                          type: FTextType.word,
                          textAlign: TextAlign.center,
                          height: 1.2,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: answerSize * 0.66,
                )
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FCircleAnswer(
                    text: 'H',
                    size: answerSize,
                    style: getButtonStyle(SwipeTestAnswer.singleN.value),
                  ),
                  FCircleAnswer(
                    text: 'HH',
                    size: answerSize,
                    style: getButtonStyle(SwipeTestAnswer.doubleN.value),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
