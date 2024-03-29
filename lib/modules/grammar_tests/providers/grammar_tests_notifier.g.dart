// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grammar_tests_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$grammarTestsNotifierHash() =>
    r'd654dde868a9cdf2e235648db157f53ff1005270';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GrammarTestsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<GrammarTest>> {
  late final GrammarTestType type;

  FutureOr<List<GrammarTest>> build(
    GrammarTestType type,
  );
}

/// See also [GrammarTestsNotifier].
@ProviderFor(GrammarTestsNotifier)
const grammarTestsNotifierProvider = GrammarTestsNotifierFamily();

/// See also [GrammarTestsNotifier].
class GrammarTestsNotifierFamily extends Family<AsyncValue<List<GrammarTest>>> {
  /// See also [GrammarTestsNotifier].
  const GrammarTestsNotifierFamily();

  /// See also [GrammarTestsNotifier].
  GrammarTestsNotifierProvider call(
    GrammarTestType type,
  ) {
    return GrammarTestsNotifierProvider(
      type,
    );
  }

  @override
  GrammarTestsNotifierProvider getProviderOverride(
    covariant GrammarTestsNotifierProvider provider,
  ) {
    return call(
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'grammarTestsNotifierProvider';
}

/// See also [GrammarTestsNotifier].
class GrammarTestsNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GrammarTestsNotifier, List<GrammarTest>> {
  /// See also [GrammarTestsNotifier].
  GrammarTestsNotifierProvider(
    GrammarTestType type,
  ) : this._internal(
          () => GrammarTestsNotifier()..type = type,
          from: grammarTestsNotifierProvider,
          name: r'grammarTestsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$grammarTestsNotifierHash,
          dependencies: GrammarTestsNotifierFamily._dependencies,
          allTransitiveDependencies:
              GrammarTestsNotifierFamily._allTransitiveDependencies,
          type: type,
        );

  GrammarTestsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final GrammarTestType type;

  @override
  FutureOr<List<GrammarTest>> runNotifierBuild(
    covariant GrammarTestsNotifier notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(GrammarTestsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GrammarTestsNotifierProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GrammarTestsNotifier,
      List<GrammarTest>> createElement() {
    return _GrammarTestsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GrammarTestsNotifierProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GrammarTestsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<GrammarTest>> {
  /// The parameter `type` of this provider.
  GrammarTestType get type;
}

class _GrammarTestsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GrammarTestsNotifier,
        List<GrammarTest>> with GrammarTestsNotifierRef {
  _GrammarTestsNotifierProviderElement(super.provider);

  @override
  GrammarTestType get type => (origin as GrammarTestsNotifierProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
