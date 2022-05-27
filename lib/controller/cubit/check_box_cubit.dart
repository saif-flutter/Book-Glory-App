import 'package:bloc/bloc.dart';


class CheckBoxCubit extends Cubit<bool> {
  CheckBoxCubit(bool initialState) : super(initialState);

  getCheckBox({required check})
  {
    emit(check);

  }
}
