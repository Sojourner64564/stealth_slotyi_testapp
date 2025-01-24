import 'package:stealth_slotyi_testapp/features/main_screen/data/model/extensions/extension_article_news_model_to_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/data/model/news_model.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/news_entity.dart';

extension ExtensionNewsModelToEntity on NewsModel{
  NewsEntity toEntity(){
    return NewsEntity(
      status: status,
        totalResults:totalResults,
        articles: articles.map((item)=>item.toEntity()).toList(),
    );
  }
}