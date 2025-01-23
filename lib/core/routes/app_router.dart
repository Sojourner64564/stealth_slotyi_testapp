import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/features/common/presentation/bottom_navigation_screen.dart';
import 'package:stealth_slotyi_testapp/features/detailed_screen/presentation/detailed_screen.dart';
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
      initial: true,
      page: BottomNavigationRoute.page,
      children: [
        AutoRoute(
          path: 'users',
          page: MainRoute.page,
        ),
        AutoRoute(
          path: 'posts',
          page: DetailedRoute.page,
        ),
      ],
    )  ];
}