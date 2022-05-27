import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CarouselWidget extends StatelessWidget {

 final  String Image;
 final  String title;
  final String description;

  const CarouselWidget({Key? key,required this.Image,required this.title,required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              width: 127.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: AssetImage('assets/bookpng/${Image}.png'),
                  fit: BoxFit.fill,
                ),
              ),
            )),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 127.w,
            height: 16.h,
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 16.sp,
                color: const Color(0xFF242126),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 127.w,
            height: 16.h,
            child: Text(
              description,
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 13.sp,
                color: const Color(0xFF242126).withOpacity(0.5),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
