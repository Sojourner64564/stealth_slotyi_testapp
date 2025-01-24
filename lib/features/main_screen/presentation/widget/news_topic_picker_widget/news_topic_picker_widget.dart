import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_colors.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_textstyles.dart';
import 'package:stealth_slotyi_testapp/core/injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/controllers/fetch_news_controller_cubit.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/widget/news_topic_picker_widget/controller/news_topic_picker_controller_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsTopicPickerWidget extends StatelessWidget {
  NewsTopicPickerWidget({super.key});

  static const List<String> _list = [
    'Business',
    'General',
    'Science',
    'Health',
    'Entertainment',
    'Sports',
    'Technology',
  ];

  final newsTopicPickerControllerCubit =
      getIt<NewsTopicPickerControllerCubit>();
  final fetchNewsControllerCubit = getIt<FetchNewsControllerCubit>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: BlocBuilder<NewsTopicPickerControllerCubit, int>(
        bloc: newsTopicPickerControllerCubit,
        builder: (context, state) {
          return ListView.separated(
            itemCount: _list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final EdgeInsets tilePadding = index == 0
                  ? const EdgeInsets.only(left: 19)
                  : index == _list.length-1
                      ? const EdgeInsets.only(right: 19)
                      : EdgeInsets.zero;
              return Padding(
                padding: tilePadding,
                child: InkWell(
                  onTap: () {
                    fetchNewsControllerCubit.categoryIndex = index;
                    fetchNewsControllerCubit.fetchNewsByCategoryIDAndMBKeyword();
                    newsTopicPickerControllerCubit.pickTopic(index);
                  },
                  borderRadius: BorderRadius.circular(19),
                  child: Ink(
                    height: 44,
                    width: 120,
                    decoration: BoxDecoration(
                      color: index == state
                          ? AppColors.blueColor
                          : AppColors.greyColor,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Center(
                      child: Text(
                        _list[index],
                        style: AppTextstyles.text400White17,
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 7);
            },
          );
        },
      ),
    );
  }
}
