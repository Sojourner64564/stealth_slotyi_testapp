import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/features/favorite_news_screen/presentation/favorite_news_page.dart';

@RoutePage()
class FavoriteNewsScreen extends StatelessWidget {
  const FavoriteNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FavoriteNewsPage();
  }
}
