import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/core/widgets/ui/constants/spacing.dart';
import 'package:focusy/modules/grammar_tests/index.dart';
import 'package:focusy/modules/router/app_router.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FSpacing.viewHeaderAndContent,
          const ViewHeader(
            title: 'Русский язык',
            titleSecondaryText: '3/4',
          ),
          FSpacing.viewHeaderAndContent,
          GrammarTestTile(
            title: 'Запятые',
            subtitle: 'Выбери из предложенных вариантов верные',
            iconData: Icons.title,
            onPressed: () => context.router.push(GrammarTestRoute(
              title: 'Расставь запятые',
              subtitle: 'Выбери из предложенных вариантов верные',
              type: GrammarTestType.comma,
            )),
          ),
          FSpacing.verticalButtons,
          GrammarTestTile(
            title: 'Ударения',
            subtitle: 'Выбери из предложенных вариантов верный',
            iconData: Icons.title,
            onPressed: () => context.router.push(GrammarTestRoute(
              title: 'Поставь ударение',
              subtitle: 'Выбери из предложенных вариантов верный',
              type: GrammarTestType.accent,
            )),
          ),
          FSpacing.verticalButtons,
          GrammarTestTile(
            title: 'Н и НН',
            subtitle: 'Свайп влево если “Н”, вправо если “НН”',
            iconData: Icons.title,
            onPressed: () => context.router.push(GrammarTestRoute(
              title: 'Н или НН',
              subtitle: 'Свайп влево если “Н”, вправо если “НН”',
              type: GrammarTestType.swipe,
            )),
            rotated: true,
          ),
          FSpacing.verticalButtons,
          Container(
            width: double.infinity,
            height: 1,
            color: FColors.touchable,
          ),
          FSpacing.verticalButtons,
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
}
