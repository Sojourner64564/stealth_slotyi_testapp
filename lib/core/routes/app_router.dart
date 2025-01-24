import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/features/common/presentation/bottom_navigation_screen.dart';
import 'package:stealth_slotyi_testapp/features/common/presentation/wrappers/main_page_wrapper.dart';
import 'package:stealth_slotyi_testapp/features/detailed_screen/presentation/detailed_screen.dart';
import 'package:stealth_slotyi_testapp/features/favorite_news_screen/presentation/favorite_news_screen.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/article_news_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/main_screen.dart';
part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: BottomNavigationRoute.page,
      children: [
        AutoRoute(
            path: "wrapper",
            page: MainWrapperRoute.page,
            children: [
              AutoRoute(
                path: 'news',
                initial: true,
                page: MainRoute.page,
              ),
              AutoRoute(
                path: 'details',
                page: DetailedRoute.page,
              ),
            ],
        ),
        AutoRoute(
          path: 'favorite_news',
          page: FavoriteNewsRoute.page,
        ),
      ],
    )  ];
}