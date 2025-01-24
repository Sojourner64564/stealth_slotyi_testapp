// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleNewsModel _$ArticleNewsModelFromJson(Map<String, dynamic> json) =>
    ArticleNewsModel(
      source: json['source'] == null
          ? const SourceNewsModel()
          : SourceNewsModel.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      url: json['url'] as String? ?? '',
      urlToImage: json['url_to_image'] as String? ?? '',
      publishedAt: json['published_at'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$ArticleNewsModelToJson(ArticleNewsModel instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'url_to_image': instance.urlToImage,
      'published_at': instance.publishedAt,
      'content': instance.content,
    };
