import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@lazySingleton
class NewsTopicPickerControllerCubit extends Cubit<int> {
  NewsTopicPickerControllerCubit() : super(0);

  void pickTopic(int index){
    emit(index);
  }
}
