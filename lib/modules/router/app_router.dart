import 'package:auto_route/auto_route.dart';
import 'package:focusy/modules/accent_tests/index.dart';
import 'package:focusy/modules/commas_tests/index.dart';
import 'package:focusy/modules/home/index.dart';
import 'package:focusy/modules/swipe_test/index.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|RouterView,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, path: '/', initial: true),
    AutoRoute(page: AccentTestRoute.page, path: '/accent-test'),
    AutoRoute(page: CommasTestRoute.page, path: '/commas-test'),
    AutoRoute(page: SwipeTestRoute.page, path: '/swipe-test'),
    // AutoRoute(page: SecondRoute.page, path: '/second'),
  ];
}
