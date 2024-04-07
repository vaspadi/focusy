import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/modules/grammar_tests/providers/current_grammar_test_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProgressAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const ProgressAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context, ref) {
    final test = ref.watch(currentGrammarTestNotifierProvider);
    final rate = (test?.combo ?? 0) * 0.1 + 1;

    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 36,
      ),
      child: AppBar(
        leading: Align(
          alignment: Alignment.centerLeft,
          child: FIconButton(
            iconData: Icons.close_rounded,
            size: 24,
            onPressed: () => context.router.pop(),
          ),
        ),
        titleSpacing: 0,
        leadingWidth: 54,
        title: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            final width = constraints.maxWidth;
            final progress = (test?.combo ?? 0) * 0.1;

            final progressColor = () {
              if (progress > 0.9) {
                return FColors.correct;
              }

              if (progress > 0.5) {
                return Color.fromRGBO(205, 234, 92, 1);
              }

              if (progress > 0.25) {
                return Color.fromRGBO(234, 211, 92, 1);
              }

              return Color.fromRGBO(222, 171, 71, 1);
            }();

            return Stack(
              children: [
                Container(
                  height: 10,
                  width: double.infinity,
                  color: FColors.backTouchable,
                ),
                Container(
                  height: 10,
                  width: progress * width,
                  color: progressColor,
                ),
              ],
            );
          }),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 23),
            child: Align(
              alignment: Alignment.centerRight,
              child: FText(
                '${rate > 2 ? 2 : rate.toStringAsFixed(1)}x',
                type: FTextType.button,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
