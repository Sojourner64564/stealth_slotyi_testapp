import 'package:dartz/dartz.dart';
import 'package:stealth_slotyi_testapp/core/error/failure.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/news_entity.dart';

abstract class FetchNewsRepository{
  Future<Either<Failure, NewsEntity>> fetchNewsByTopic(String category);
  Future<Either<Failure, NewsEntity>> fetchNewsByKeyword(String keyword, String category);
}