// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/main_screen/presentation/widget/news_topic_picker_widget/controller/news_topic_picker_controller_cubit.dart'
    as _i563;
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
  gh.lazySingleton<_i629.AppRouter>(() => _i629.AppRouter());
  gh.lazySingleton<_i563.NewsTopicPickerControllerCubit>(
      () => _i563.NewsTopicPickerControllerCubit());
  return getIt;
}
