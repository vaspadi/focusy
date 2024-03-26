import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';

@RoutePage()
class CommasTestView extends StatelessWidget {
  const CommasTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(
      appBar: AppBarOfTest(),
      body: Column(
        children: [
          ViewHeader(
            title: 'Расставь запятые',
            subtitle: 'Выбери из предложенных вариантов верные',
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
