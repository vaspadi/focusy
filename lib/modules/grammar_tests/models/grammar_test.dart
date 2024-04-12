// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:focusy/modules/grammar_tests/enums/grammar_test_status.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/grammar_test_type.dart';
import 'grammar_test_span.dart';

part 'grammar_test.g.dart';

@JsonSerializable()
class GrammarTest {
  final int id;
  final String text;
  final List<int> variants;
  final List<int> correct;
  final GrammarTestType type;
  @JsonKey(includeFromJson: false)
  final GrammarTestStatus status;

  const GrammarTest({
    required this.id,
    required this.text,
    required this.variants,
    required this.correct,
    required this.type,
    this.status = GrammarTestStatus.notPassed,
  });

  factory GrammarTest.fromJson(Map<String, dynamic> json) =>
      _$GrammarTestFromJson(json);

  GrammarTest copyWith({
    int? id,
    String? text,
    List<int>? variants,
    List<int>? correct,
    GrammarTestType? type,
    GrammarTestStatus? status,
  }) {
    return GrammarTest(
      id: id ?? this.id,
      text: text ?? this.text,
      variants: variants ?? this.variants,
      correct: correct ?? this.correct,
      type: type ?? this.type,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() => _$GrammarTestToJson(this);

  List<GrammarTestSpan> toSpans() => text
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
