part of 'fetch_news_controller_cubit.dart';

abstract class FetchNewsControllerState {}

class FetchNewsControllerStateInitial extends FetchNewsControllerState {}
class FetchNewsControllerStateLoading extends FetchNewsControllerState {}
class FetchNewsControllerStateLoaded extends FetchNewsControllerState {
  final NewsEntity newsEntity;
  FetchNewsControllerStateLoaded(this.newsEntity);
}
class FetchNewsControllerStateErrorAppFailure extends FetchNewsControllerState {}
class FetchNewsControllerStateErrorServerFailure extends FetchNewsControllerState {}
class FetchNewsControllerStateErrorNoInternet extends FetchNewsControllerState {}
