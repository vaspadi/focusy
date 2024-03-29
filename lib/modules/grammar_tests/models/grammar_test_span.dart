class GrammarTestSpan {
  final String text;
  final int value;
  final bool isVariant;
  final bool isAnswer;

  const GrammarTestSpan({
    required this.text,
    required this.value,
    required this.isVariant,
    required this.isAnswer,
  });

  GrammarTestSpan copyWith({
    String? text,
    int? value,
    bool? isVariant,
    bool? isAnswer,
  }) {
    return GrammarTestSpan(
      text: text ?? this.text,
      value: value ?? this.value,
      isVariant: isVariant ?? this.isVariant,
      isAnswer: isAnswer ?? this.isAnswer,
    );
  }
}
