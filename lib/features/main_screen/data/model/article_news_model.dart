import 'package:json_annotation/json_annotation.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/data/model/source_news_model.dart';

part 'article_news_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArticleNewsModel {
  const ArticleNewsModel({
    this.source = const SourceNewsModel(),
    this.author = '',
    this.title = '',
    this.description = '',
    this.url = '',
    this.urlToImage = '',
    this.publishedAt = '',
    this.content = ''
  });

  final SourceNewsModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  factory ArticleNewsModel.fromJson(Map<String,dynamic> json) => _$ArticleNewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleNewsModelToJson(this);
}