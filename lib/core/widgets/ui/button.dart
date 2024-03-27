import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'interfaces/button.dart';
import 'text.dart';

class FButton extends StatelessWidget implements IButton {
  final String text;
  @override
  final void Function()? onPressed;
  @override
  final bool disabled;
  final FButtonStyle style;

  const FButton({
    required this.text,
    this.onPressed,
    this.disabled = false,
    this.style = FButtonStyle.normal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: style.getBackgroundColor(),
        side: style.getBorderSize(),
        overlayColor: style.getOverlayColor(),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 45)),
        shadowColor: const MaterialStatePropertyAll(Colors.transparent),
      ),
      child: FText(
        text,
        type: FTextType.button,
        color: style.getTextColor(),
      ),
    );
  }
}

enum FButtonStyle {
  normal,
  light;

  const FButtonStyle();

  MaterialStateProperty<Color> getBackgroundColor() {
    final color = () {
      switch (this) {
        case normal:
          return FColors.text;
        case light:
          return FColors.back;
      }
    }();

    return MaterialStatePropertyAll(color);
  }

  MaterialStateProperty<BorderSide>? getBorderSize() {
    switch (this) {
      case light:
        return const MaterialStatePropertyAll(
          BorderSide(color: FColors.touchable),
        );
      case normal:
        return null;
    }
  }

  MaterialStateProperty<Color> getOverlayColor() {
    final color = () {
      switch (this) {
        case normal:
          return FColors.back.withOpacity(0.2);
        case light:
          return FColors.text.withOpacity(0.2);
      }
    }();

    return MaterialStatePropertyAll(color);
  }

  Color getTextColor() {
    switch (this) {
      case normal:
        return Colors.white;
      case light:
        return FColors.text;
    }
  }
}
