import 'package:json_annotation/json_annotation.dart';

part 'source_news_model.g.dart';

@JsonSerializable()
class SourceNewsModel{
  const SourceNewsModel({
    this.id = '',
    this.name = '',
  });

  final String id;
  final String name;

  factory SourceNewsModel.fromJson(Map<String,dynamic> json) => _$SourceNewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SourceNewsModelToJson(this);
}