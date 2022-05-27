import 'package:bloc/bloc.dart';


class TabBarCubit extends Cubit<int> {
  TabBarCubit(super.initialState);


   getIndex({required test})
   {
     emit(test);

   }


}
