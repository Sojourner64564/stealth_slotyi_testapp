import 'package:stealth_slotyi_testapp/features/main_screen/data/model/article_news_model.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/data/model/extensions/extension_source_news_model_to_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/article_news_entity.dart';

extension ExtensionArticleNewsModelToEntity on ArticleNewsModel {
  ArticleNewsEntity toEntity() {
    return ArticleNewsEntity(
      source: source.toEntity(),
      author:author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      content: content,
    );
  }
}
