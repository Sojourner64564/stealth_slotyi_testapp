import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_colors.dart';
import 'package:stealth_slotyi_testapp/features/detailed_screen/presentation/detailed_page.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/article_news_entity.dart';

@RoutePage()
class DetailedScreen extends StatelessWidget {
  const DetailedScreen({super.key, required this.articleNewsEntity});

  final ArticleNewsEntity articleNewsEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.router.back();
            },
            icon: const Icon(
              Icons.star_border_outlined,
              size: 50,
              color: AppColors.grey2Color,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 50,
            color: AppColors.grey2Color,
          ),
        ),

      ),
      body: const DetailedPage(),
    );
  }
}
