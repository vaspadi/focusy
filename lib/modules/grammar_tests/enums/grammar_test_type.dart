import 'package:json_annotation/json_annotation.dart';

enum GrammarTestType {
  @JsonValue(0)
  accent,
  @JsonValue(1)
  comma,
  @JsonValue(2)
  swipe;

  const GrammarTestType();

  bool get isAccent => this == accent;
  bool get isComma => this == comma;
  bool get isSwipe => this == swipe;
}
