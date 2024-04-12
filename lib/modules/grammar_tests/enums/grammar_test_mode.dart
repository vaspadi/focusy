import 'package:json_annotation/json_annotation.dart';

enum GrammarTestMode {
  @JsonValue(0)
  single,
  @JsonValue(1)
  mixed;

  const GrammarTestMode();

  bool get isMixed => this == mixed;
  bool get isSingle => this == single;
}
