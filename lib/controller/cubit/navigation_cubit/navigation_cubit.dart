import 'package:bloc/bloc.dart';


class NavigationCubit extends Cubit<int> {
  NavigationCubit(super.initialState);

  getIndex({required index})
  {
    emit(index);
  }

}
