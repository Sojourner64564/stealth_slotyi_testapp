import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/core/env_var_name/env_var_name.dart';
import 'package:stealth_slotyi_testapp/core/error/failure.dart';
import 'package:stealth_slotyi_testapp/core/network/network_info.dart';
import 'package:stealth_slotyi_testapp/features/common/data/remote_ds/retrofit_client_data_remote.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/data/model/extensions/extension_news_model_to_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/news_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/repository/fetch_news_repository.dart';

@LazySingleton(as: FetchNewsRepository)
class FetchNewsRepositoryImpl implements FetchNewsRepository{
  FetchNewsRepositoryImpl(this.retrofitClientDataRemoteInstance, this.networkInfo);

  final RetrofitClientDataRemoteInstance retrofitClientDataRemoteInstance;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, NewsEntity>> fetchNewsByKeyword(String keyword, String category) async{
    try{
      if(! await networkInfo.isConnected) return Left(NoInternetFailure('No internet'));
      final apiKey = dotenv.env[EnvVarName.apiKeyVar];
      if(apiKey==null) return Left(AppFailure('No apikey in dotenv'));
      final newsModel = await retrofitClientDataRemoteInstance.client().fetchNewsByKeyword(apiKey, keyword, category);
      return Right(newsModel.toEntity());
    } on DioException catch(e){
      return Left(ServerFailure(e.toString()));
    } catch(e){
      return Left(AppFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, NewsEntity>> fetchNewsByTopic(String category) async{
    try{
      if(! await networkInfo.isConnected) return Left(NoInternetFailure('No internet'));
      final apiKey = dotenv.env[EnvVarName.apiKeyVar];
      if(apiKey==null) return Left(AppFailure('No apikey in dotenv'));
      final newsModel = await retrofitClientDataRemoteInstance.client().fetchNewsByTopic(apiKey, category);
      return Right(newsModel.toEntity());
    } on DioException catch(e){
      return Left(ServerFailure(e.toString()));
    } catch(e){
      return Left(AppFailure(e.toString()));
    }
  }

}