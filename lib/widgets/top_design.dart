import 'package:book/widgets/widget_carosesl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_color.dart';

class UpperDesign extends StatelessWidget {
   UpperDesign({Key? key}) : super(key: key);
  final List<Widget> imgList = [
    const CarouselWidget(
        Image: 'fatherhood',
        title: 'Fatherhood',
        description: 'Marcus Berkmann'),
    const CarouselWidget(
        Image: 'dissapearance_of_emile_zola',
        title: 'Zola',
        description: ' The Dissapearance of '),
    const CarouselWidget(
        Image: 'how_to_be_the_best_in_time_and_space',
        title: 'Travellers',
        description: 'The Time Travellers '),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Positioned(
            top: -200.sp,
            left: -20.sp,
            right: -20.sp,
            child: Container(
              height: 486.sp,
              width: 486.sp,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyColor.textColor),
            ),
          ),
          Positioned(
            right: 30.sp,
            left: 30.sp,
            top: 54.sp,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Our Top Picks',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 24.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        width: 40.sp,
                        // color: Colors.pink,

                        child: Icon(
                          Icons.list,
                          color: Colors.white,
                          size: 24.sp,
                        ))),
              ],
            ),
          ),
          Positioned(
              top: 121.sp,
              left: 0.sp,
              right: 0.sp,
              child: CarouselSlider(
                  items: imgList,
                  options: CarouselOptions(
                    height: 230.h,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 0.45,
                    viewportFraction: 0.45,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                  )))
        ],
      ),
    );
  }
}
