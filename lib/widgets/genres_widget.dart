import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 201.h,
      // color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 278.w,
            height: 201.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: const Color(0xFF1C4A7E),
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 6,
                    child: Image.asset(
                        'assets/bookpng/group_13.png')),
                Expanded(
                  child: Text(
                    'Graphic Novels',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 25.w,
          ),
          Container(
            width: 278.w,
            height: 201.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: const Color(0xFFC65135),
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 6,
                    child: Image.asset(
                        'assets/bookpng/group_13.png')),
                Expanded(
                  child: Text(
                    'Graphic Novels',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
