// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccentTestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccentTestView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    CommasTestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommasTestView(),
      );
    },
  };
}

/// generated route for
/// [AccentTestView]
class AccentTestRoute extends PageRouteInfo<void> {
  const AccentTestRoute({List<PageRouteInfo>? children})
      : super(
          AccentTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccentTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommasTestView]
class CommasTestRoute extends PageRouteInfo<void> {
  const CommasTestRoute({List<PageRouteInfo>? children})
      : super(
          CommasTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommasTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
