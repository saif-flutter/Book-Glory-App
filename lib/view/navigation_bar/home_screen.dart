
import 'package:book/widgets/best_seller_widget.dart';
import 'package:book/widgets/genres_widget.dart';
import 'package:book/widgets/my_color.dart';
import 'package:book/widgets/recently_viewed.dart';
import 'package:book/widgets/text_field_widget.dart';
import 'package:book/widgets/top_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      body: Column(
        children: [
          UpperDesign(),
          Expanded(
              flex: 2,
              child: ListView(
                padding: EdgeInsets.only(left: 20.sp, top: 25.sp),
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                    width: 335.w,
                    height: 32.h,
                    child: Text(
                      'Bestsellers',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 24.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  const BestSeller(),
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 335.w,
                    child: Text(
                      'Genres',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 24.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const GenresWidget(),
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 335.w,
                    child: Text(
                      'Recently Viewed',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 24.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  const RecentlyViewed(),
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 335.w,
                    child: Text(
                      'Monthly Newsletter',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 24.sp,
                        color: const Color(0xFF242126),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  SizedBox(

                    height: 175,
                    child: Stack(
                      children: [
                        ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 40.sp),
                              width: 302.w,
                              height: 24.h,
                              child: Text(
                                'Receive our monthly newsletter and receive updates \non new stock, books and the occasional promotion.',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 10.sp,
                                  color: Colors.grey[900]?.withOpacity(0.5),
                                  letterSpacing: 0.16,
                                ),
                              ),
                            ),
                             SizedBox(
                               height: 15.h,
                             ),


                             const TextFieldWidget(),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          right: 33,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 160.w,
                              height: 32.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: MyColor.textColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColor.textColor.withOpacity(0.75),
                                    offset: const Offset(5.0, 5.0),
                                    blurRadius: 10.r,
                                  ),
                                ],
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  letterSpacing: 0.224,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 161,
                          width:334 ,



                        )
                      ],
                    ),
                  ),





                  SizedBox(
                    height: 60.h,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
