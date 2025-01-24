// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [BottomNavigationScreen]
class BottomNavigationRoute extends PageRouteInfo<void> {
  const BottomNavigationRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BottomNavigationScreen();
    },
  );
}

/// generated route for
/// [DetailedScreen]
class DetailedRoute extends PageRouteInfo<DetailedRouteArgs> {
  DetailedRoute({
    Key? key,
    required ArticleNewsEntity articleNewsEntity,
    List<PageRouteInfo>? children,
  }) : super(
          DetailedRoute.name,
          args: DetailedRouteArgs(
            key: key,
            articleNewsEntity: articleNewsEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailedRouteArgs>();
      return DetailedScreen(
        key: args.key,
        articleNewsEntity: args.articleNewsEntity,
      );
    },
  );
}

class DetailedRouteArgs {
  const DetailedRouteArgs({
    this.key,
    required this.articleNewsEntity,
  });

  final Key? key;

  final ArticleNewsEntity articleNewsEntity;

  @override
  String toString() {
    return 'DetailedRouteArgs{key: $key, articleNewsEntity: $articleNewsEntity}';
  }
}

/// generated route for
/// [FavoriteNewsScreen]
class FavoriteNewsRoute extends PageRouteInfo<void> {
  const FavoriteNewsRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoriteNewsScreen();
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [MainWrapperPage]
class MainWrapperRoute extends PageRouteInfo<void> {
  const MainWrapperRoute({List<PageRouteInfo>? children})
      : super(
          MainWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainWrapperPage();
    },
  );
}
