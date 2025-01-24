import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/core/error/failure.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/news_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/repository/fetch_news_repository.dart';

@lazySingleton
class FetchNewsUC implements FetchNewsRepository {
  FetchNewsUC(this.fetchNewsRepository);

  final FetchNewsRepository fetchNewsRepository;

  @override
  Future<Either<Failure, NewsEntity>> fetchNewsByKeyword(String keyword, String category) async{
    return await fetchNewsRepository.fetchNewsByKeyword(keyword, category);
  }

  @override
  Future<Either<Failure, NewsEntity>> fetchNewsByTopic(String category) async{
    return await fetchNewsRepository.fetchNewsByTopic(category);
  }
}