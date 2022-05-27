import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/my_button_widget.dart';
import '../widgets/my_color.dart';
import 'onboarding_screens/onboarding_screen.dart';

class VerificationCodeScreen extends StatefulWidget {
  final String verification;
   int? token;

  VerificationCodeScreen({Key? key,required this.verification, int? token}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController otpController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 23.sp, top: 30.sp),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 24.sp,
                height: 12.sp,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: MyColor.textColor,
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80.sp),
            child: Center(
                child: Text('Verification Code',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: MyColor.textColor,
                      fontWeight: FontWeight.w600,
                    ))),
          ),
          SizedBox(
            height: 16.sp,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.sp,
                color: MyColor.textColor,
                height: 1.71,
              ),
              children: [
                TextSpan(
                  text: 'Enter the ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: '6 digit',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: MyColor.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: ' code that we have sent to you\nthrough Phone ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: '000000000',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: MyColor.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.sp),
            child: Form(
              key: formKey,
              child: PinCodeTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter the OTP';
                    }
                    return null;
                  },
                  controller: otpController,
                  boxShadows: const [
                    BoxShadow(color: Color(0xFF2A2C39), blurRadius: 2),
                  ],
                  // backgroundColor: const Color(0xFF2A2C39),

                  textStyle: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5.r),
                    selectedColor: Colors.green,
                    inactiveColor: const Color(0xFF2A2C39),
                    activeColor: Colors.green,
                  ),
                  appContext: context,
                  length: 6,
                  onChanged: (value) {

                  }),
            ),
          ),
          SizedBox(
            height: 16.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.sp),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Icon(
                  Icons.watch_later_outlined,
                  color: const Color(0xFF5F606A),
                  size: 20.sp,
                )),
                Expanded(
                  child: Text(
                    "00:10",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: MyColor.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend Code',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: MyColor.textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 40.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.sp),

            child:MyButton(
              text: 'Verify',
              callback: () async {

                if (formKey.currentState!.validate()) {

                }
                final code = otpController.text;

                AuthCredential credential =
                    PhoneAuthProvider.credential(
                        verificationId: widget.verification, smsCode: code);
                UserCredential result =
                    await _auth.signInWithCredential(credential);
                User? user = result.user;
                if (user != null) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const OnboardingScreen();
                  }));
                  debugPrint('==============================>>Success');
                  Fluttertoast.showToast(msg: 'Success');
                } else {
                  debugPrint('==============================>>Sorry');
                  Fluttertoast.showToast(msg: 'Some Error Found');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
