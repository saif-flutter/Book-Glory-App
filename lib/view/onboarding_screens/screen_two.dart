import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(vertical: 100.h),
        child: Column(
          children: [
             Expanded(
              child: Text(
                '20 Book \n Grocers Nationally',
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColor.textColor, fontSize: 30.sp),
              ),
            ),
             Expanded(
              child: Text(
                "We've successfully opened 20 stores across Australia.",
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColor.textColor, fontSize: 14.sp),
              ),
            ),
            Expanded(flex: 2, child: Image.asset('assets/images/screen2.png')),
            Expanded(
                child: Container(
                  // color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}
