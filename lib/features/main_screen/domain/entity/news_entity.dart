import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/article_news_entity.dart';

class NewsEntity{
  NewsEntity({
    this.status = '',
    this.totalResults = 0,
    this.articles = const [],
  });

  final String status;
  final int totalResults;
  final List<ArticleNewsEntity> articles;
}