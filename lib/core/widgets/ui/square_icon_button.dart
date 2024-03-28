import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'interfaces/button.dart';

class FSquareIconButton extends StatelessWidget implements IButton {
  final IconData iconData;
  @override
  final bool disabled;
  @override
  final void Function()? onPressed;
  final FSquareIconButtonStyle style;

  const FSquareIconButton({
    required this.iconData,
    this.disabled = false,
    this.onPressed,
    this.style = FSquareIconButtonStyle.normal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconData),
      onPressed: disabled ? null : onPressed,
      splashRadius: 1,
      style: ButtonStyle(
        iconColor: style.getIconColor(),
        backgroundColor: style.getBackgroundColor(),
        side: style.getBorderSize(),
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

enum FSquareIconButtonStyle {
  normal,
  selected,
  success,
  error;

  const FSquareIconButtonStyle();

  MaterialStateProperty<Color> getBackgroundColor() {
    final color = () {
      switch (this) {
        case error:
          return FColors.incorrect;
        case success:
          return FColors.correct;
        case normal:
          return FColors.backTouchable;
        case selected:
          return FColors.text;
      }
    }();

    return MaterialStatePropertyAll(color);
  }

  MaterialStateProperty<BorderSide>? getBorderSize() {
    switch (this) {
      case normal:
        return const MaterialStatePropertyAll(
          BorderSide(
            color: Color.fromRGBO(153, 153, 153, 1),
            // style: BorderStyle.none,
          ),
        );
      case selected:
      case success:
      case error:
        return null;
    }
  }

  MaterialStateProperty<Color> getIconColor() {
    final color = () {
      switch (this) {
        case normal:
          return const Color.fromRGBO(153, 153, 153, 1);
        case error:
        case selected:
        case success:
          return const Color.fromRGBO(255, 255, 255, 1);
      }
    }();

    return MaterialStatePropertyAll(color);
  }
}
