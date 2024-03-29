import 'package:flutter/material.dart';

class FText extends Text {
  final FTextType type;
  final Color? color;
  final double? height;
  final double? fontSize;
  final TextAlign? textAlign;

  const FText(
    super.data, {
    this.type = FTextType.text,
    this.color,
    this.height,
    this.fontSize,
    this.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: type.getTextStyle(context)?.copyWith(
            color: color,
            fontSize: fontSize,
            height: height ?? 1,
          ),
      textAlign: textAlign,
    );
  }
}

enum FTextType {
  word,
  title,
  cards,
  text,
  button,
  description;

  const FTextType();

  TextStyle? getTextStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    switch (this) {
      case word:
        return textTheme.displayMedium;
      case title:
        return textTheme.titleMedium;
      case cards:
        return textTheme.displaySmall;
      case text:
        return textTheme.bodyMedium;
      case description:
        return textTheme.bodySmall;
      case button:
        return textTheme.labelMedium;
    }
  }
}
