import 'package:book/view/login_screen.dart';
import 'package:book/view/sign_in_screen.dart';
import 'package:book/widgets/my_button_widget.dart';
import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.sp),
        child: Stack(
          children: [
            Positioned(
              top: 270.sp,
              right: 20.sp,
              child: MyButton(
                  text: 'Sign In',
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  }),
            ),
            Positioned(
                left: -30.sp,
                child: Image.asset(
                  'assets/images/group_96.png',
                  height: 340.h,
                )),
            Positioned(
                top: 60.sp,
                right: -80.sp,
                child: Image.asset(
                  'assets/images/group_39.png',
                  height: 200.h,
                )),
            Positioned(
                top: 200.sp,
                right: -40.sp,
                child: Image.asset(
                  'assets/images/path_156.png',
                  height: 150.h,
                )),
            Positioned(
                top: 100.sp,
                right: 140.sp,
                child: Text(
                  'Books For',
                  style: TextStyle(fontSize: 36.sp, color: MyColor.textColor),
                )),
            Positioned(
              bottom: 270.sp,
              right: 20.sp,
              child: MyButton(
                  text: 'Sign Up',
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                  }),
            ),
            Positioned(
                bottom: 0.sp,
                left: -150.sp,
                child: Image.asset(
                  'assets/images/group_95.png',
                  height: 340.h,
                )),
          ],
        ),
      ),
    );
  }
}
