import 'package:flutter/material.dart';

class FText extends Text {
  final FTextType type;

  const FText(
    super.data, {
    this.type = FTextType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = () {
      final textTheme = Theme.of(context).textTheme;

      switch (type) {
        case FTextType.word:
          return textTheme.displayMedium;
        case FTextType.title:
          return textTheme.titleMedium;
        case FTextType.cards:
          return textTheme.displaySmall;
        case FTextType.text:
          return textTheme.bodyMedium;
        case FTextType.description:
          return textTheme.bodySmall;
        case FTextType.button:
          return textTheme.labelMedium;
      }
    }();

    return Text(
      data ?? '',
      style: textStyle,
    );
  }
}

enum FTextType {
  word,
  title,
  cards,
  text,
  button,
  description,
}
