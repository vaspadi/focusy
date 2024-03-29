import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focusy/modules/grammar_tests/index.dart';
import 'package:focusy/modules/home/index.dart';
import 'package:focusy/modules/swipe_test/index.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|RouterView,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, path: '/', initial: true),
    AutoRoute(page: GrammarTestRoute.page, path: '/grammar-test'),
    // AutoRoute(page: SecondRoute.page, path: '/second'),
  ];
}
