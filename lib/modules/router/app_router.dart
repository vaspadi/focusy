import 'package:auto_route/auto_route.dart';
import 'package:focusy/modules/home/index.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|RouterView,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, path: '/', initial: true),
    // AutoRoute(page: SecondRoute.page, path: '/second'),
  ];
}
