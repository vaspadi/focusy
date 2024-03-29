import 'package:flutter/material.dart';

import '../constants/colors.dart';

enum FAnswerButtonStyle {
  normal,
  selected,
  success,
  error;

  const FAnswerButtonStyle();

  Color getBackgroundColor() {
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
  }

  BorderSide? getBorderSide() {
    switch (this) {
      case normal:
        return const BorderSide(
          color: Color.fromRGBO(153, 153, 153, 1),
        );
      case selected:
      case success:
      case error:
        return null;
    }
  }

  Color getIconColor() {
    switch (this) {
      case normal:
        return const Color.fromRGBO(153, 153, 153, 1);
      case error:
      case selected:
      case success:
        return const Color.fromRGBO(255, 255, 255, 1);
    }
  }
}
