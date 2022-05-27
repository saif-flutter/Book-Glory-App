import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      SizedBox(
      height: 240.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 122.w,
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
                      'assets/bookpng/the_zoo.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'Fatherhood',
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
                      'by Christopher Wilson',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),
              Expanded(
                  child: SizedBox(
                    width: 70.w,
                    height: 9.h,
                    child: Image.asset('assets/bookpng/group_23.png'),
                  )),
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 122.w,
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
                      'assets/bookpng/in_a_land_of_paper_gods.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'In A Land Of Paper Gods',
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
                      'by Rebecca Mackenzie',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),
              Expanded(
                  child: SizedBox(
                    width: 70.w,
                    height: 9.h,
                    child: Image.asset('assets/bookpng/group_23.png'),
                  )),
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 122.w,
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
                      'assets/bookpng/tattletale.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'Tattletale',
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
                      'by Sarah J. Noughton',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),
              Expanded(
                  child: SizedBox(
                    width: 70.w,
                    height: 9.h,
                    child: Image.asset('assets/bookpng/group_23.png'),
                  )),
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: 122.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 5.0),
                          blurRadius: 10.r,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/bookpng/how_to_be_the_best_in_time_and_space.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 123.w,
                    height: 16.h,
                    child: Text(
                      'Fatherhood',
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
                      'by Christopher Wilson',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 11.sp,
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                    ),
                  )),
              Expanded(
                  child: SizedBox(
                    width: 70.w,
                    height: 9.h,
                    child: Image.asset('assets/bookpng/group_23.png'),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
