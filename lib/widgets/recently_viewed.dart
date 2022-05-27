import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 260.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 154.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 5.0),
                          blurRadius: 24.r,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/bookpng/the_fatal_tree.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'The Fatal Tree',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 15.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.sp,
                    height: 16.sp,
                    child: Text(
                      'by Jake Arnott',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 154.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 5.0),
                          blurRadius: 24.r,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/bookpng/day_four.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'Day Four',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 15.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.sp,
                    height: 16.sp,
                    child: Text(
                      'by LOTZ, SARAH',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 154.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 5.0),
                          blurRadius: 24.r,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/bookpng/d2d.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'Door to Door',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 15.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.sp,
                    height: 16.sp,
                    child: Text(
                      'by Edward Humes',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),


            ],
          ),

        ],
      ),
    );
  }
}
