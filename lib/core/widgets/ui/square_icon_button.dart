import 'package:flutter/material.dart';

import 'enums/answer_button_style.dart';
import 'interfaces/button.dart';

class FSquareIconButton extends StatelessWidget implements IButton {
  final IconData iconData;
  @override
  final bool disabled;
  @override
  final void Function()? onPressed;
  final FAnswerButtonStyle style;

  const FSquareIconButton({
    required this.iconData,
    this.disabled = false,
    this.onPressed,
    this.style = FAnswerButtonStyle.normal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconData),
      onPressed: disabled ? null : onPressed,
      splashRadius: 1,
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(style.getIconColor()),
        backgroundColor: MaterialStatePropertyAll(style.getBackgroundColor()),
        side: MaterialStatePropertyAll(style.getBorderSide()),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        elevation: const MaterialStatePropertyAll(1),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        minimumSize: const MaterialStatePropertyAll(Size(28, 28)),
        maximumSize: const MaterialStatePropertyAll(Size(28, 28)),
        iconSize: const MaterialStatePropertyAll(20),
      ),
    );
  }
}
