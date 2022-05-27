import 'dart:ui';

import 'package:book/view/book_open_screen.dart';
import 'package:book/view/our_store_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_color.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Container(
          width: 295.0.sp,
          height: 812.0.sp,
          decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(250.r),
            ),
          ),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 16.sp,
                    color: Colors.grey[900],
                    letterSpacing: 0.5,
                    height: 3.sp,
                  ),
                  children:  [
                    const TextSpan(
                      text: 'Home   ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(

                      text: 'home\n',
                      recognizer: TapGestureRecognizer()..onTap=(){


                      },
                      style: const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: 'Our Books   ',
                      style:  TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      text: 'book',
                      recognizer: TapGestureRecognizer()..onTap=(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const BookOpenScreen();
                          }));



                      },
                      style: const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: '-open',
                      style: TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                      ),
                    ),
                    const TextSpan(
                      text: 'Our Stores   ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      recognizer: TapGestureRecognizer()..onTap=(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {

                          return const OurStoreScreen();
                        }
                        ));

                      },
                      text: 'store\n',
                      style: const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: 'Careers    ',
                      style:  TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      text: 'briefcase',
                      recognizer: TapGestureRecognizer()..onTap=(){


                      },
                      style: const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: 'Sell With Us      ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      text: 'dollar-sign ',
                      recognizer: TapGestureRecognizer()..onTap=(){



                      },
                      style: const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: 'Newsletter    ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      text: 'newspaper\n',
                      recognizer: TapGestureRecognizer()..onTap=(){



                      },
                      style:  const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: 'Pop-up Leasing    ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      text: 'external-link-alt\n',
                      recognizer: TapGestureRecognizer()..onTap=(){



                      },
                      style:  const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: 'Account     ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     TextSpan(
                      text: 'user-circle',
                      recognizer: TapGestureRecognizer()..onTap=(){



                      },
                      style: const TextStyle(
                        fontFamily: 'Font Awesome 5 Free',
                        color: MyColor.textColor,
                      ),
                    ),

                  ],
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                width: 221.w,

                child: Text(
                  'cog    Terms   Privacy',
                  style: TextStyle(
                    fontFamily: 'Font Awesome 5 Free',
                    fontSize: 15.sp,
                    color: Colors.grey[900]?.withOpacity(0.4),
                    letterSpacing: 0.22499999999999998,
                    height: 4.h,
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
