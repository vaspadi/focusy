import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/circle_answer.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/core/widgets/ui/enums/answer_button_style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SwipeTestView extends HookConsumerWidget {
  const SwipeTestView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    const backgroundCardTopOffset = 23.0;
    final direction = useState('none');

    return FScaffold(
      appBar: AppBarOfTest(),
      body: Column(
        children: [
          ViewHeader(
            title: 'Н и НН',
            subtitle: 'Свайп влево если “Н”, вправо если “НН”',
          ),
          const Spacer(),
          LayoutBuilder(
            builder: (context, constraints) {
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
                          backgroundCardOffset:
                              const Offset(0, -backgroundCardTopOffset),
                          backgroundCardCount: 2,
                          // backgroundCardScale: 1.2,
                          cardCount: 10,
                          threshold: 100,
                          swipeOptions: const SwipeOptions.symmetric(
                            horizontal: true,
                            vertical: false,
                          ),
                          onSwipeEnd: (i, k, b) {
                            direction.value = 'none';
                          },
                          onSwipeBegin: (i, k, b) {
                            print('begin');
                          },
                          onCardPositionChanged: (position) {
                            // print('changed');
                            if (position.offset.dx > 100) {
                              // print('offest: ${position.offset.dx}, ${position.offset.dy}');
                              direction.value = 'right';
                              return;
                            }
                            if (position.offset.dx < -100) {
                              // print('offest: ${position.offset.dx}, ${position.offset.dy}');
                              direction.value = 'left';
                              return;
                            }

                            direction.value = 'none';
                          },
                          onEnd: () {
                            // print('end');
                            direction.value = 'none';
                          },
                          onSwipeCancelled: (v) {
                            direction.value = 'none';
                          },
                          cardBuilder: (BuildContext context, int index) {
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
                                'Испоче_ный пирог',
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
                          text: 'HH',
                          size: answerSize,
                          style: direction.value == 'left'
                              ? FAnswerButtonStyle.selected
                              : FAnswerButtonStyle.normal,
                        ),
                        FCircleAnswer(
                          text: 'H',
                          size: answerSize,
                          style: direction.value == 'right'
                              ? FAnswerButtonStyle.selected
                              : FAnswerButtonStyle.normal,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          // Spacer(),
          // FText(direction.value),
          const Spacer(),
          const Spacer(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FButton(
            text: 'Пропустить вопрос',
            style: FButtonStyle.light,
          ),
        ],
      ),
    );
  }
}
