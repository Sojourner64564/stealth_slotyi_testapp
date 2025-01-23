import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_colors.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/widget/news_list_view_widget.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/widget/news_topic_picker_widget/news_topic_picker_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SearchBar(
              leading: Image.asset(
                'assets/images/icons/search_icon.png',
                width: 32,
                height: 32,
              ),
              elevation: const WidgetStatePropertyAll(0),
              backgroundColor: const WidgetStatePropertyAll(AppColors.transparentColor),
            ),
          ),
          const Gap(25),
          NewsTopicPickerWidget(),
          const Gap(22),
          const Expanded(
            child: NewsListViewWidget(),
          ),
        ],
      ),
    );
  }
}
