enum GrammarTestType {
  accent,
  comma,
  swipe;

  const GrammarTestType();

  bool get isAccent => this == accent;
  bool get isComma => this == comma;
  bool get isSwipe => this == swipe;
}
