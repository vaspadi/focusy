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
      body: SafeArea(
        child: isLoading
            ? const Center(
                child: FPreloader(),
              )
            : Padding(
                padding: const EdgeInsets.all(36).copyWith(
                  top: 8,
                  bottom: bottomNavigationBar == null ? null : 0,
                ),
                child: body,
              ),
      ),
      bottomNavigationBar: isLoading
          ? null
          : Padding(
              padding: const EdgeInsets.all(36).copyWith(top: 18),
              child: bottomNavigationBar,
            ),
    );
  }
}
