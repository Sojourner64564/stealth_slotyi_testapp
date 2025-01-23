import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/presentation/widget/news_tile_widget.dart';

class NewsListViewWidget extends StatelessWidget {
  const NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 32,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: NewsTileWidget(title: 'Title', subtitle: 'Subtitle', data: 'MM.DD.YYYY',),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 15);
      },
    );
  }
}
