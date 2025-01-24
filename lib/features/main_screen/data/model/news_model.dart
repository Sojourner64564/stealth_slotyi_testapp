import 'package:stealth_slotyi_testapp/features/main_screen/data/model/article_news_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsModel {
  final String status;
  final int totalResults;
  final List<ArticleNewsModel> articles;

  NewsModel({
    this.status = '',
    this.totalResults = 0,
    this.articles = const [],
  });

  factory NewsModel.fromJson(Map<String,dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

