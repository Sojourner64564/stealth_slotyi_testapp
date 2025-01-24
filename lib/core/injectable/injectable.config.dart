// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

import '../../features/common/data/remote_ds/retrofit_client_data_remote.dart'
    as _i820;
import '../../features/main_screen/data/repository_impl/fetch_news_repository_impl.dart'
    as _i792;
import '../../features/main_screen/domain/repository/fetch_news_repository.dart'
    as _i98;
import '../../features/main_screen/presentation/widget/news_topic_picker_widget/controller/news_topic_picker_controller_cubit.dart'
    as _i563;
import '../network/internet_connection_checker.dart' as _i657;
import '../network/network_info.dart' as _i932;
import '../network/network_info_impl.dart' as _i865;
import '../routes/app_router.dart' as _i629;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModuleConnectionChecker = _$RegisterModuleConnectionChecker();
  gh.factory<_i820.RetrofitClientDataRemoteInstance>(
      () => _i820.RetrofitClientDataRemoteInstance());
  gh.factory<_i973.InternetConnectionChecker>(
      () => registerModuleConnectionChecker.internetConnection);
  gh.lazySingleton<_i629.AppRouter>(() => _i629.AppRouter());
  gh.lazySingleton<_i563.NewsTopicPickerControllerCubit>(
      () => _i563.NewsTopicPickerControllerCubit());
  gh.lazySingleton<_i932.NetworkInfo>(
      () => _i865.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()));
  gh.lazySingleton<_i98.FetchNewsRepository>(
      () => _i792.FetchNewsRepositoryImpl(
            gh<_i820.RetrofitClientDataRemoteInstance>(),
            gh<_i932.NetworkInfo>(),
          ));
  return getIt;
}

class _$RegisterModuleConnectionChecker
    extends _i657.RegisterModuleConnectionChecker {}
