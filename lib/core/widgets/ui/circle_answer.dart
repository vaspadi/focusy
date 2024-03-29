import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/ui/enums/answer_button_style.dart';

import 'text.dart';

class FCircleAnswer extends StatelessWidget {
  final String text;
  final double size;
  final FAnswerButtonStyle style;

  const FCircleAnswer({
    super.key,
    this.size = 64,
    this.style = FAnswerButtonStyle.normal,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: style.getBackgroundColor(),
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.fromBorderSide(
          style.getBorderSide() ?? BorderSide.none,
        ),
      ),
      child: FText(
        text,
        type: FTextType.word,
        color: style.getIconColor(),
        fontSize: size / 2,
      ),
    );
  }
}
