import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/modules/router/app_router.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      body: Column(
        children: [
          const ViewHeader(title: 'Главная'),
          FButton(
            text: 'Тест ударений',
            onPressed: () => context.router.push(const AccentTestRoute()),
          ),
          FButton(
            text: 'Тест запятых',
            onPressed: () => context.router.push(const CommasTestRoute()),
          ),
        ],
      ),
    );
  }
}
