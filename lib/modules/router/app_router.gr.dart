// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccentTestView]
class AccentTestRoute extends PageRouteInfo<void> {
  static const String name = 'AccentTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);

  const AccentTestRoute({List<PageRouteInfo>? children})
      : super(
          AccentTestRoute.name,
          initialChildren: children,
        );
}

/// generated route for
/// [CommasTestView]
class CommasTestRoute extends PageRouteInfo<void> {
  static const String name = 'CommasTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);

  const CommasTestRoute({List<PageRouteInfo>? children})
      : super(
          CommasTestRoute.name,
          initialChildren: children,
        );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);

  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );
}

/// generated route for
/// [SwipeTestView]
class SwipeTestRoute extends PageRouteInfo<void> {
  static const String name = 'SwipeTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);

  const SwipeTestRoute({List<PageRouteInfo>? children})
      : super(
          SwipeTestRoute.name,
          initialChildren: children,
        );
}

abstract class _$AppRouter extends RootStackRouter {
  @override
  final Map<String, PageFactory> pagesMap = {
    AccentTestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccentTestView(),
      );
    },
    CommasTestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommasTestView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    SwipeTestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SwipeTestView(),
      );
    },
  };

  // ignore: unused_element
  _$AppRouter({super.navigatorKey});
}
