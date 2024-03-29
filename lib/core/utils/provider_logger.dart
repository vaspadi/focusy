import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    log('$provider has been created', name: 'RIVERPOD');
  }

  // @override
  // void didUpdateProvider(
  //   ProviderBase<Object?> provider,
  //   Object? previousValue,
  //   Object? newValue,
  //   ProviderContainer container,
  // ) {
  //   log('$provider has been updated', name: 'RIVERPOD');
  // }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    log('$provider deleted from memory', name: 'RIVERPOD');
  }
}
