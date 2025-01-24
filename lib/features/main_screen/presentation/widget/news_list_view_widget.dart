import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_textstyles.dart';
import 'package:stealth_slotyi_testapp/core/injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/controllers/fetch_news_controller_cubit.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/widget/news_tile_widget.dart';

class NewsListViewWidget extends StatelessWidget {
  NewsListViewWidget({super.key});

  final fetchNewsControllerCubit = getIt<FetchNewsControllerCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewsControllerCubit, FetchNewsControllerState>(
        bloc: fetchNewsControllerCubit,
        builder: (context, state) {
          if (state is FetchNewsControllerStateInitial) {
            return const SizedBox();
          }
          if (state is FetchNewsControllerStateLoading) {
            return const Center(
              child: Text(
                'Loading...',
                style: AppTextstyles.text400Black19,
              ),
            );
          }
          if (state is FetchNewsControllerStateLoaded) {
            return ListView.separated(
              itemCount: state.newsEntity.articles.length,
              itemBuilder: (BuildContext context, int index) {
                final article = state.newsEntity.articles[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: NewsTileWidget(
                    title: article.title,
                    subtitle: article.description,
                    date: 'MM.DD.YYYY',
                    imgUrl: article.urlToImage,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 15);
              },
            );
          }
          if (state is FetchNewsControllerStateErrorAppFailure) {
            return const Center(
              child: Text(
                'App failure',
                style: AppTextstyles.text400Black19,
              ),
            );
          } if (state is FetchNewsControllerStateErrorServerFailure) {
            return const Center(
              child: Text(
                'Server failure',
                style: AppTextstyles.text400Black19,
              ),
            );
          }
          if (state is FetchNewsControllerStateErrorNoInternet) {
            return const Center(
              child: Text(
                'No internet',
                style: AppTextstyles.text400Black19,
              ),
            );
          } else {
            return const Center(
              child: Text(
                'Unexpected error',
                style: AppTextstyles.text400Black19,
              ),
            );
          }
        });
  }
}
