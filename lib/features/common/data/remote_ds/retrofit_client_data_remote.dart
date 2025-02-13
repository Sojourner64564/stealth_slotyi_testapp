import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/data/model/news_model.dart';

part 'retrofit_client_data_remote.g.dart';

@RestApi(baseUrl: 'https://newsapi.org/v2')
abstract class RetrofitClientDataRemote {
  factory RetrofitClientDataRemote(Dio dio, {String? baseUrl}) =
      _RetrofitClientDataRemote;

  @GET('/top-headlines?q={keyword}&category={category}&apiKey={apiKey}')
  Future<NewsModel> fetchNewsByKeyword({
    @Path('apiKey') required String apiKey,
    @Path('keyword') required String keyword,
    @Path('category') required String category,
  });

  @GET('/top-headlines?category={category}&apiKey={apiKey}')
  Future<NewsModel> fetchNewsByTopic({
    @Path('apiKey') required String apiKey,
      @Path('category') required String category,
  });
}

@injectable
class RetrofitClientDataRemoteInstance {
  RetrofitClientDataRemote client() {
    return _RetrofitClientDataRemote(Dio());
  }
}
