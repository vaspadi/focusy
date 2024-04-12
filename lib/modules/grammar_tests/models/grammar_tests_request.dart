import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/grammar_test_mode.dart';
import '../enums/grammar_test_type.dart';

part 'grammar_tests_request.freezed.dart';
part 'grammar_tests_request.g.dart';

@freezed
class GrammarTestsRequest with _$GrammarTestsRequest {
  @Assert('mode == GrammarTestMode.mixed || '
      '(mode == GrammarTestMode.single && type != null)')
  const factory GrammarTestsRequest({
    @Default(50) int count,
    @Default(GrammarTestMode.mixed) GrammarTestMode mode,
    @JsonKey(disallowNullValue: true) GrammarTestType? type,
  }) = _GrammarTestsRequest;

  factory GrammarTestsRequest.fromJson(Map<String, dynamic> json) =>
      _$GrammarTestsRequestFromJson(json);
}
