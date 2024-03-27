import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/ui/icon_button.dart';

class AppBarOfTest extends StatelessWidget implements PreferredSizeWidget {
  const AppBarOfTest({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: AppBar(
        leading: Align(
          alignment: Alignment.centerLeft,
          child: FIconButton(
            iconData: Icons.close_rounded,
            size: 24,
            onPressed: () => context.router.pop(),
          ),
        ),
      ),
    );
  }
}
