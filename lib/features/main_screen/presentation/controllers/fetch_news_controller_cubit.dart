import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/core/error/failure.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/entity/news_entity.dart';
import 'package:stealth_slotyi_testapp/features/main_screen/domain/usecase/fetch_news_by_topic_uc.dart';

part 'fetch_news_controller_state.dart';

@lazySingleton
class FetchNewsControllerCubit extends Cubit<FetchNewsControllerState> {
  FetchNewsControllerCubit(this.fetchNewsUC) : super(FetchNewsControllerStateInitial());
  
  final FetchNewsUC fetchNewsUC;

  static const List<String> _list = [
    'business',
    'general',
    'science',
    'health',
    'entertainment',
    'sports',
    'technology',
  ];

  int categoryIndex = 0;
  String keywordString = '';
  

  Future<void> fetchNewsByCategoryID() async{
    emit(FetchNewsControllerStateLoading());

    final either = await fetchNewsUC.fetchNewsByTopic(_list[categoryIndex]);
    final fold = either.fold((failure)=>failure, (response)=>response);
    if(fold is AppFailure){
      emit(FetchNewsControllerStateErrorAppFailure());
      return;
    }
    if(fold is ServerFailure){
      emit(FetchNewsControllerStateErrorServerFailure());
      return;
    }
    if(fold is NoInternetFailure){
      emit(FetchNewsControllerStateErrorNoInternet());
      return;
    }
    if(fold is NewsEntity){
      emit(FetchNewsControllerStateLoaded(fold));
    }
  }

  Future<void> fetchNewsByCategoryIDAndKeyword() async{
    if(keywordString.isEmpty) return;

    emit(FetchNewsControllerStateLoading());
    // бабабаунсер
    await Future.delayed(const Duration(milliseconds: 200));

    final either = await fetchNewsUC.fetchNewsByKeyword(keywordString, _list[categoryIndex]);
    final fold = either.fold((failure)=>failure, (response)=>response);
    if(fold is AppFailure){
      emit(FetchNewsControllerStateErrorAppFailure());
      return;
    }
    if(fold is ServerFailure){
      emit(FetchNewsControllerStateErrorServerFailure());
      return;
    }
    if(fold is NoInternetFailure){
      emit(FetchNewsControllerStateErrorNoInternet());
      return;
    }
    if(fold is NewsEntity){
      emit(FetchNewsControllerStateLoaded(fold));
    }
  }

  /// Метод обновления новостей для рефреш индикатора
  Future<void> fetchNewsByCategoryIDAndMBKeyword() async{
    if(keywordString.isEmpty){
      final either = await fetchNewsUC.fetchNewsByTopic(_list[categoryIndex]);
      final fold = either.fold((failure)=>failure, (response)=>response);
      if(fold is AppFailure){
        emit(FetchNewsControllerStateErrorAppFailure());
        return;
      }
      if(fold is ServerFailure){
        emit(FetchNewsControllerStateErrorServerFailure());
        return;
      }
      if(fold is NoInternetFailure){
        emit(FetchNewsControllerStateErrorNoInternet());
        return;
      }
      if(fold is NewsEntity){
        emit(FetchNewsControllerStateLoaded(fold));
        return;
      }
    }else{
      print('dsfsdfs');
      final either = await fetchNewsUC.fetchNewsByKeyword(keywordString, _list[categoryIndex]);
      print('1');
      final fold = either.fold((failure)=>failure, (response)=>response);
      if(fold is AppFailure){
        emit(FetchNewsControllerStateErrorAppFailure());
        return;
      }
      if(fold is ServerFailure){
        emit(FetchNewsControllerStateErrorServerFailure());
        return;
      }
      if(fold is NoInternetFailure){
        emit(FetchNewsControllerStateErrorNoInternet());
        return;
      }
      if(fold is NewsEntity){
        emit(FetchNewsControllerStateLoaded(fold));
      }
    }
  }
}

