import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/core/widgets/ui/constants/spacing.dart';
import 'package:focusy/modules/grammar_tests/index.dart';
import 'package:focusy/modules/grammar_tests/models/grammar_tests_request.dart';
import 'package:focusy/modules/grammar_tests/providers/grammar_tests_request_notifier.dart';
import 'package:focusy/modules/router/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../grammar_tests/enums/grammar_test_mode.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(grammarTestsRequestNotifierProvider);
    final requestNotifier =
        ref.watch(grammarTestsRequestNotifierProvider.notifier);

    return FScaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FSpacing.viewHeaderAndContent,
          const ViewHeader(
            title: 'Русский язык',
            titleSecondaryText: '3/4',
          ),
          FSpacing.viewHeaderAndContent,
          GrammarTestTile(
            title: 'Смешанный',
            subtitle: 'Несколько режимов одновременно',
            iconData: Icons.title,
            onPressed: () {
              requestNotifier.setRequest(
                const GrammarTestsRequest(
                  mode: GrammarTestMode.mixed,
                ),
              );

              context.router.push(GrammarTestRoute(
                title: 'Расставь запятые',
                subtitle: 'Выбери из предложенных вариантов верные',
                backgroundCardCount: 0,
              ));
            },
          ),
          _buildDivider(),
          GrammarTestTile(
            title: 'Запятые',
            subtitle: 'Выбери из предложенных вариантов верные',
            iconData: Icons.title,
            onPressed: () {
              requestNotifier.setRequest(
                const GrammarTestsRequest(
                  mode: GrammarTestMode.single,
                  type: GrammarTestType.comma,
                ),
              );

              context.router.push(GrammarTestRoute(
                title: 'Расставь запятые',
                subtitle: 'Выбери из предложенных вариантов верные',
              ));
            },
          ),
          FSpacing.verticalButtons,
          GrammarTestTile(
            title: 'Ударения',
            subtitle: 'Выбери из предложенных вариантов верный',
            iconData: Icons.title,
            onPressed: () {
              requestNotifier.setRequest(
                const GrammarTestsRequest(
                  mode: GrammarTestMode.single,
                  type: GrammarTestType.accent,
                ),
              );

              context.router.push(GrammarTestRoute(
                title: 'Поставь ударение',
                subtitle: 'Выбери из предложенных вариантов верный',
              ));
            },
          ),
          FSpacing.verticalButtons,
          GrammarTestTile(
            title: 'Н и НН',
            subtitle: 'Свайп влево если “Н”, вправо если “НН”',
            iconData: Icons.title,
            onPressed: () {
              requestNotifier.setRequest(
                const GrammarTestsRequest(
                  mode: GrammarTestMode.single,
                  type: GrammarTestType.swipe,
                ),
              );

              context.router.push(GrammarTestRoute(
                title: 'Н или НН',
                subtitle: 'Свайп влево если “Н”, вправо если “НН”',
              ));
            },
            rotated: true,
          ),
          _buildDivider(),
          const GrammarTestTile(
            title: 'О или А',
            subtitle: 'Недоступен',
            iconData: Icons.title,
            rotated: true,
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FSpacing.verticalButtons,
        Container(
          width: double.infinity,
          height: 1,
          color: FColors.touchable,
        ),
        FSpacing.verticalButtons,
      ],
    );
  }
}
