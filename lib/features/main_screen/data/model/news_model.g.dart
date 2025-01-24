// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      status: json['status'] as String? ?? '',
      totalResults: (json['total_results'] as num?)?.toInt() ?? 0,
      articles: (json['articles'] as List<dynamic>?)
              ?.map((e) => ArticleNewsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'status': instance.status,
      'total_results': instance.totalResults,
      'articles': instance.articles,
    };
