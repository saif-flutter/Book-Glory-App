import 'package:bloc/bloc.dart';
import 'package:book/controller/cubit/phone_verification_repo/phone_repoo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'phone_verification_state.dart';

class PhoneVerificationCubit extends Cubit<PhoneVerificationState> {
  PhoneVerificationCubit() : super(PhoneVerificationInitial());



  signUp(BuildContext context,String phone)
  {
    emit(PhoneVerificationLoadingState());

    PhoneRepo.signIn(context, phone);


  Future.delayed(Duration(seconds: 2),(){
    emit(PhoneVerificationInitial());
  });


  }
}
