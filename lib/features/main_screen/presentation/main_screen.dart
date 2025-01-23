import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_colors.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/main_page.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: MainPage(),
    );
  }
}
