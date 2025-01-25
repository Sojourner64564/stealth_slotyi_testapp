import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/core/routes/app_router.dart';

@RoutePage()
class MainWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const MainWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyRouterPage();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
