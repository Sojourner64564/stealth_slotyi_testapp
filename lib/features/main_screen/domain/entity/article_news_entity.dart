import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/source_news_entity.dart';

class ArticleNewsEntity{
  ArticleNewsEntity({
    this.source = const SourceNewsEntity(),
    this.author = '',
    this.title = '',
    this.description = '',
    this.url = '',
    this.urlToImage = '',
    this.content = '',
    this.publishedAt,
  });

  final SourceNewsEntity source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime? publishedAt;
  final String content;
}