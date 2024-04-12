// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grammar_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrammarTest _$GrammarTestFromJson(Map<String, dynamic> json) => GrammarTest(
      id: json['id'] as int,
      text: json['text'] as String,
      variants:
          (json['variants'] as List<dynamic>).map((e) => e as int).toList(),
      correct: (json['correct'] as List<dynamic>).map((e) => e as int).toList(),
      type: $enumDecode(_$GrammarTestTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$GrammarTestToJson(GrammarTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'variants': instance.variants,
      'correct': instance.correct,
      'type': _$GrammarTestTypeEnumMap[instance.type]!,
    };

const _$GrammarTestTypeEnumMap = {
  GrammarTestType.accent: 0,
  GrammarTestType.comma: 1,
  GrammarTestType.swipe: 2,
};
