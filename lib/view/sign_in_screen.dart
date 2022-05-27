import 'package:book/controller/cubit/phone_verification_cubit.dart';
import 'package:book/widgets/my_button_widget.dart';
import 'package:book/widgets/my_color.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/cubit/check_box_cubit.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  String countryCode = '+92';
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: ListView(
          children: [
            SizedBox(
              height: 15.sp,
            ),
            Container(
              height: 14.sp,
              width: 14.sp,
              alignment: Alignment.topLeft,
              // color: Colors.red,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: MyColor.textColor,
                  )),
            ),
            SizedBox(
              height: 35.sp,
            ),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 111.sp,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter the PhoneNumber';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                controller: phoneController,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: '+92 3159739150',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none
                      )
                  ),

                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: 10.sp),

                    width: 110.sp,
                    // color: Colors.red,
                    child: CountryCodePicker(
                      onChanged: (code) {
                        countryCode = code.dialCode!;
                        debugPrint('=====================>>>>>>>>>>>>>>..');
                        debugPrint(countryCode);
                      },

                      initialSelection: 'Pakistan',
                      alignLeft: true,

                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 84.sp,
            ),
            Row(
              children: [
                Expanded(child: BlocBuilder<CheckBoxCubit, bool>(
                  builder: (context, state) {
                    return Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                          value: state,
                          fillColor: MaterialStateProperty.all(
                              const Color(0xFF5ABD8C)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.r)),
                          side: const BorderSide(
                            color: Color(0xFF707070),
                          ),
                          onChanged: (value) {
                            context
                                .read<CheckBoxCubit>()
                                .getCheckBox(check: !state);
                          }),
                    );
                  },
                )),
                Expanded(
                    flex: 5,
                    child: Text(
                      'Stay Logged In',
                      style: TextStyle(fontSize: 12.sp),
                    ))
              ],
            ),
            SizedBox(
              height: 34.sp,
            ),
            BlocBuilder<PhoneVerificationCubit, PhoneVerificationState>(
              builder: (context, state) {
                if(state is PhoneVerificationInitial){
                  return MyButton(text: 'Sign In', callback: () {
                    if (_formKey.currentState!.validate()) {
                      final phone = countryCode + phoneController.text;
                      debugPrint(phone);

                      context.read<PhoneVerificationCubit>().signUp(
                          context, phone);
                    }
                    if (phoneController.text != null) {
                      // final phone='92 ${phoneController.text}';

                      debugPrint('=====================>');


                    }
                  });
                }
                else {

                  return  SizedBox(
                    width: 30.sp,
                    height: 40.sp,
                    child: const Center(
                      child: CircularProgressIndicator(

                      ),
                    ),
                  );
                }


              },
            )

          ],
        ),
      ),
    );
  }
}
