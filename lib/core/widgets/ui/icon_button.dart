import 'package:flutter/material.dart';

import 'interfaces/button.dart';

class FIconButton extends StatelessWidget implements IButton {
  final IconData iconData;
  @override
  final bool disabled;
  @override
  final void Function()? onPressed;

  const FIconButton({
    required this.iconData,
    this.disabled = false,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconData),
      onPressed: disabled ? null : onPressed,
    );
  }
}
