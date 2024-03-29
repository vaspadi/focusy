import 'package:focusy/core/enums/grammar_test_status.dart';

import 'grammar_test_span.dart';

class GrammarTest {
  final String word;
  final List<int> variants;
  final List<int> correct;
  final GrammarTestStatus status;

  const GrammarTest({
    required this.word,
    required this.variants,
    required this.correct,
    this.status = GrammarTestStatus.notPassed,
  });

  GrammarTest copyWith({
    String? word,
    List<int>? variants,
    List<int>? correct,
    GrammarTestStatus? status,
  }) {
    return GrammarTest(
      word: word ?? this.word,
      variants: variants ?? this.variants,
      correct: correct ?? this.correct,
      status: status ?? this.status,
    );
  }

  List<GrammarTestSpan> toSpans() => word
          .split('')
          .asMap()
          .entries
          .fold<List<GrammarTestSpan>>([], (acc, entry) {
        final text = entry.value;
        final value = entry.key;
        final isVariant = variants.contains(value);
        final isCorrect = correct.contains(value);
        final lastIsVariant = variants.contains(value - 1);

        if (isVariant || lastIsVariant || acc.isEmpty) {
          acc = [
            ...acc,
            GrammarTestSpan(
              text: text,
              value: value,
              isVariant: isVariant,
              isAnswer: isCorrect,
            ),
          ];
        } else {
          acc.last = acc.last.copyWith(text: acc.last.text + text);
        }

        return acc;
      });
}
