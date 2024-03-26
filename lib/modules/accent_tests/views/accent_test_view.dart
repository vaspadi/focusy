import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';

@RoutePage()
class AccentTestView extends StatelessWidget {
  const AccentTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(
      appBar: AppBarOfTest(),
      body: Column(
        children: [
          ViewHeader(
            title: 'Поставь ударение',
            subtitle: 'Выбери из предложенных вариантов верный',
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FButton(text: 'Проверка'),
          FButton(text: 'Пропустить вопрос'),
        ],
      ),
    );
  }
}
