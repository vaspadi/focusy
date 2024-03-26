import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(
      body: Column(
        children: [
          ViewHeader(title: 'Главная'),
        ],
      ),
    );
  }
}
