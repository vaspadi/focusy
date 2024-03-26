import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/ui/theme/theme.dart';
import 'package:focusy/modules/router/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      theme: FThemeData.light,
      routerConfig: router.config(),
    );
  }
}
