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
    GrammarTestRoute.name: (routeData) {
      final args = routeData.argsAs<GrammarTestRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GrammarTestView(
          title: args.title,
          type: args.type,
          subtitle: args.subtitle,
          key: args.key,
        ),
      );
    },
  };
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
/// [SwipeTestView]
class SwipeTestRoute extends PageRouteInfo<void> {
  const SwipeTestRoute({List<PageRouteInfo>? children})
      : super(
          SwipeTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'SwipeTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GrammarTestView]
class GrammarTestRoute extends PageRouteInfo<GrammarTestRouteArgs> {
  GrammarTestRoute({
    required String title,
    required GrammarTestType type,
    String? subtitle,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          GrammarTestRoute.name,
          args: GrammarTestRouteArgs(
            title: title,
            type: type,
            subtitle: subtitle,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'GrammarTestRoute';

  static const PageInfo<GrammarTestRouteArgs> page =
      PageInfo<GrammarTestRouteArgs>(name);
}

class GrammarTestRouteArgs {
  const GrammarTestRouteArgs({
    required this.title,
    required this.type,
    this.subtitle,
    this.key,
  });

  final String title;

  final GrammarTestType type;

  final String? subtitle;

  final Key? key;

  @override
  String toString() {
    return 'GrammarTestRouteArgs{title: $title, type: $type, subtitle: $subtitle, key: $key}';
  }
}
