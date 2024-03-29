import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/spacing.dart';
import 'package:focusy/modules/grammar_tests/enums/grammar_test_type.dart';
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
          const ViewHeader(title: 'Главная'),
          FSpacing.viewHeaderAndContent,
          FButton(
            text: 'Тест ударений',
            onPressed: () => context.router.push(GrammarTestRoute(
              title: 'Поставь ударение',
              subtitle: 'Выбери из предложенных вариантов верный',
              type: GrammarTestType.accent,
            )),
          ),
          FSpacing.verticalButtons,
          FButton(
            text: 'Тест запятых',
            onPressed: () => context.router.push(GrammarTestRoute(
              title: 'Расставь запятые',
              subtitle: 'Выбери из предложенных вариантов верные',
              type: GrammarTestType.comma,
            )),
          ),
          FSpacing.verticalButtons,
          FButton(
            text: 'Н и НН',
            onPressed: () => context.router.push(GrammarTestRoute(
              title: 'Н или НН',
              subtitle: 'Свайп влево если “Н”, вправо если “НН”',
              type: GrammarTestType.swipe,
            )),
          ),
        ],
      ),
    );
  }
}
