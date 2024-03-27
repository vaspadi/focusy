import 'package:focusy/modules/accent_tests/interfaces/i_accent_tests_repository.dart';
import 'package:focusy/modules/accent_tests/repositories/mock_accent_tests_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accent_tests_repository_provider.g.dart';

@riverpod
IAccentTestsRepository accentTestsRepository(AccentTestsRepositoryRef ref) {
  return MockAccentTestsRepository();
}
