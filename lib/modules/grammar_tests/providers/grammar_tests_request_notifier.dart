import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/grammar_tests_request.dart';

part 'grammar_tests_request_notifier.g.dart';

@riverpod
class GrammarTestsRequestNotifier extends _$GrammarTestsRequestNotifier {
  @override
  GrammarTestsRequest? build() => null;

  void setRequest(GrammarTestsRequest request) => state = request;
}
