// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grammar_tests_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrammarTestsRequestImpl _$$GrammarTestsRequestImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['type'],
  );
  return _$GrammarTestsRequestImpl(
    count: json['count'] as int? ?? 50,
    mode: $enumDecodeNullable(_$GrammarTestModeEnumMap, json['mode']) ??
        GrammarTestMode.mixed,
    type: $enumDecodeNullable(_$GrammarTestTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$$GrammarTestsRequestImplToJson(
    _$GrammarTestsRequestImpl instance) {
  final val = <String, dynamic>{
    'count': instance.count,
    'mode': _$GrammarTestModeEnumMap[instance.mode]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$GrammarTestTypeEnumMap[instance.type]);
  return val;
}

const _$GrammarTestModeEnumMap = {
  GrammarTestMode.single: 0,
  GrammarTestMode.mixed: 1,
};

const _$GrammarTestTypeEnumMap = {
  GrammarTestType.accent: 0,
  GrammarTestType.comma: 1,
  GrammarTestType.swipe: 2,
};
