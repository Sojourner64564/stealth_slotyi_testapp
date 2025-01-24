import 'package:stealth_slotyi_testapp/features/main_screen/data/model/source_news_model.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/source_news_entity.dart';

extension ExtensionSourceNewsModelToEntity on SourceNewsModel{
  SourceNewsEntity toEntity(){
    return SourceNewsEntity(
      id: id,
      name: name,
    );
  }
}