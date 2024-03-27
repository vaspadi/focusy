import 'package:flutter/material.dart';

import 'preloader.dart';

class FScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool isLoading;

  const FScaffold({
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: isLoading
          ? const Center(
              child: FPreloader(),
            )
          : body,
      bottomNavigationBar: isLoading ? null : bottomNavigationBar,
    );
  }
}
