import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 310.w,
      height: 79.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
// Group: Group 29
          Container(
            alignment: const Alignment(-0.94, -0.12),
            width: 310.0,
            height: 32.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xFFEFEFEF),
            ),
            child: Text(
              'Name',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 12.sp,
                color: Colors.grey[900]?.withOpacity(0.5),
                letterSpacing: 0.192,
              ),
            ),
          ),
// Group: Group 30
          Container(
            alignment: const Alignment(-0.93, -0.12),
            width: 310.0,
            height: 32.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xFFEFEFEF),
            ),
            child: Text(
              'Email Address',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 12.sp,
                color: Colors.grey[900]?.withOpacity(0.5),
                letterSpacing: 0.192,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
