import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookOpenScreen extends StatelessWidget {
  const BookOpenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 332.h,
            // color: Colors.grey,
            child: Stack(
              children: [
                Positioned(
                  top: -160.sp,
                  left: -20.sp,
                  right: -20.sp,
                  child: Container(
                    height: 446.h,
                    width: 446.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColor.textColor,
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  top: 17.sp,
                  child: SizedBox(
                    width: 69.35.sp,
                    height: 138.69.sp,
                    child: Image.asset('assets/book/path_158.png'),
                  ),
                ),
                Positioned(
                  right: -20,
                  top: 17.sp,
                  child: SizedBox(
                    width: 69.35.sp,
                    height: 138.69.sp,
                    child: Image.asset('assets/book/path_159.png'),
                  ),
                ),
                Positioned(
                  top: 30.sp,
                  right: 0.sp,
                  left: 0.sp,
                  child: SizedBox(
                    height: 100.h,
                    child: Image.asset('assets/book/group_100.png'),
                  ),
                ),
                Positioned(
                  top: 160.sp,
                  left: 50.sp,
                  child: Container(
                    width: 69.w,
                    height: 122.h,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/book/mask_group_1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 160.sp,
                  left: 140.sp,
                  child: Container(
                    width: 112.w,
                    height: 122.h,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/book/mask_group_2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 160.sp,
                  right: -130,
                  child: Container(
                    width: 215.5.w,
                    height: 122.h,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/book/mask_group_3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: SizedBox(
              width: 333.w,
              height: 760.h,
              child: Text(
                'The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.\n\nOur specialty is sourcing discounted books of amazing quality and passing on to our customers the best possible price.\nWe take our book buying very seriously indeed. We scour the globe and the best publishers and suppliers for the best bargains, but no book simply arrives in our warehouse simply because it\'s cheap. It has to be something we want to read ourselves and would reccomend to others.\nWe like to be known as the business which sells discounted books yet looks and feels like a retail bookstore.\n\nWe are an Australian, family-owned business. We have been buying and selling books since 2000, when the first Castlebooks store opened in Kingston, ACT.\n\nIn 2007 we opened the first Book Grocer in Brunswick, Victoria. Book Grocers can now be found in a range of locations across Victoria, NSW, and of course, Canberra.\n\nOur staff also love reading and recommending books to others and we are proud of the role they play in demonstrating to our customers how good discount books can be.',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 15.sp,
                  color: Colors.grey[900]?.withOpacity(0.75),
                  letterSpacing: 0.375,
                  fontWeight: FontWeight.w300,
                  height: 1.47.h,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
