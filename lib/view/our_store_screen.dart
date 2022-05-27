import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurStoreScreen extends StatelessWidget {
  const OurStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.sp, right: 36.sp, top: 15.sp),
            height: 177.63.h,
            width: 319.w,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: MyColor.textColor,
                          ))),
                ),
                Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: SizedBox(
                                      width: 158.w,
                                      height: 27.h,
                                      child: Text(
                                        'Will Newman',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 24.sp,
                                          color: Colors.grey[900]
                                              ?.withOpacity(0.75),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: SizedBox(
                                      width: 168.w,
                                      height: 36.h,
                                      child: Text(
                                        'Constantly travelling and keeping up to date with business related books.',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 10.sp,
                                          color: Colors.grey[900]
                                              ?.withOpacity(0.5),
                                          letterSpacing: 0.16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      width: 168.w,
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'Font Awesome 5 Free',
                                            fontSize: 9.sp,
                                            color: Colors.grey[900]
                                                ?.withOpacity(0.25),
                                            letterSpacing: 0.14400000000000002,
                                          ),
                                          children: const [
                                            TextSpan(
                                              text: 'location-arrow     ',
                                            ),
                                            TextSpan(
                                              text: 'Newcastle - Australia',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                              ],
                            )),
                        Expanded(
                            child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 37.r,
                                  backgroundImage: const AssetImage(
                                    'assets/book/saif.jpg',
                                  ),
                                )),
                            const Spacer(),
                            Expanded(
                                child: Container(
                              width: 100.w,
                              height: 29.63.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                gradient: const LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment(1.9, 1.67),
                                  colors: [
                                    MyColor.textColor,
                                    Color(0xFF00FF81)
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColor.textColor.withOpacity(0.5),
                                    offset: const Offset(0, 5.0),
                                    blurRadius: 15.r,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 13.sp,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ))
                          ],
                        ))
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 70.h,
            // color: Colors.yellow,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Spacer(),
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: 40.w,
                          height: 24.h,
                          child: Text(
                            '21',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 24.sp,
                              color: Colors.grey[900]?.withOpacity(0.5),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Expanded(
                        child: SizedBox(
                      width: 40.w,
                      height: 36.h,
                      child: Text(
                        'Books',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 10.sp,
                          color: Colors.grey[900]?.withOpacity(0.5),
                          letterSpacing: 0.16,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ))
                  ],
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          const Spacer(),
                          Expanded(
                              flex: 2,
                              child: SizedBox(
                                width: 40.w,
                                height: 24.h,
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 24.sp,
                                    color: Colors.grey[900]?.withOpacity(0.5),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                          Expanded(
                              child: SizedBox(
                            width: 40.w,
                            height: 36.h,
                            child: Text(
                              'Reviews',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 10.sp,
                                color: Colors.grey[900]?.withOpacity(0.5),
                                letterSpacing: 0.16,
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 35.sp, top: 14),
            child: Text(
              'Your purchases (21)',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 20.sp,
                color: Colors.grey[900]?.withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(left: 20.sp),
            alignment: Alignment.centerLeft,
            height: 200.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 200.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/book/1.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/book/2.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/book/3.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/book/1.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/book/2.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 35.sp, top: 14),
            child: Text(
              'Your reviews (7)',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 20.sp,
                color: Colors.grey[900]?.withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 20.sp),
            child: SizedBox(
              height: 120.h,
              width: 308.w,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 21.sp, top: 20.sp),
                                  // color: Colors.yellow,
                                  width: 184.w,
                                  height: 42.h,
                                  child: Text(
                                    'A must read for everybody. This book taught me so many things about...',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color:
                                          Colors.grey[900]?.withOpacity(0.75),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 20.sp),
                              // color: Colors.grey,
                              width: 184.w,
                              height: 14.h,
                              child: Text(
                                'Read more >',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 12.sp,
                                  color: Colors.grey[900]?.withOpacity(0.5),
                                  letterSpacing: 0.192,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                      left: 20.sp,
                                    ),
                                    alignment: Alignment.topLeft,
                                    // color: Colors.orange,
                                    height: 9.42.sp,
                                    child: Image.asset(
                                        'assets/bookpng/group_23.png'))),
                            const Spacer(
                              flex: 1,
                            )
                          ],
                        )),
                    Expanded(
                        child: Image.asset(
                      'assets/book/1.png',
                      width: 62.5.sp,
                      height: 100.sp,
                      fit: BoxFit.fill,
                    ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 20.sp),
            child: SizedBox(
              height: 120.h,
              width: 308.w,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  margin:
                                  EdgeInsets.only(left: 21.sp, top: 20.sp),
                                  // color: Colors.yellow,
                                  width: 184.w,
                                  height: 42.h,
                                  child: Text(
                                    'A must read for everybody. This book taught me so many things about...',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color:
                                      Colors.grey[900]?.withOpacity(0.75),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 20.sp),
                                  // color: Colors.grey,
                                  width: 184.w,
                                  height: 14.h,
                                  child: Text(
                                    'Read more >',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color: Colors.grey[900]?.withOpacity(0.5),
                                      letterSpacing: 0.192,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                      left: 20.sp,
                                    ),
                                    alignment: Alignment.topLeft,
                                    // color: Colors.orange,
                                    height: 9.42.sp,
                                    child: Image.asset(
                                        'assets/bookpng/group_23.png'))),
                            const Spacer(
                              flex: 1,
                            )
                          ],
                        )),
                    Expanded(
                        child: Image.asset(
                          'assets/book/1.png',
                          width: 62.5.sp,
                          height: 100.sp,
                          fit: BoxFit.fill,
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 20.sp),
            child: SizedBox(
              height: 120.h,
              width: 308.w,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  margin:
                                  EdgeInsets.only(left: 21.sp, top: 20.sp),
                                  // color: Colors.yellow,
                                  width: 184.w,
                                  height: 42.h,
                                  child: Text(
                                    'A must read for everybody. This book taught me so many things about...',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color:
                                      Colors.grey[900]?.withOpacity(0.75),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 20.sp),
                                  // color: Colors.grey,
                                  width: 184.w,
                                  height: 14.h,
                                  child: Text(
                                    'Read more >',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color: Colors.grey[900]?.withOpacity(0.5),
                                      letterSpacing: 0.192,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                      left: 20.sp,
                                    ),
                                    alignment: Alignment.topLeft,
                                    // color: Colors.orange,
                                    height: 9.42.sp,
                                    child: Image.asset(
                                        'assets/bookpng/group_23.png'))),
                            const Spacer(
                              flex: 1,
                            )
                          ],
                        )),
                    Expanded(
                        child: Image.asset(
                          'assets/book/1.png',
                          width: 62.5.sp,
                          height: 100.sp,
                          fit: BoxFit.fill,
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 20.sp),
            child: SizedBox(
              height: 120.h,
              width: 308.w,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  margin:
                                  EdgeInsets.only(left: 21.sp, top: 20.sp),
                                  // color: Colors.yellow,
                                  width: 184.w,
                                  height: 42.h,
                                  child: Text(
                                    'A must read for everybody. This book taught me so many things about...',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color:
                                      Colors.grey[900]?.withOpacity(0.75),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 20.sp),
                                  // color: Colors.grey,
                                  width: 184.w,
                                  height: 14.h,
                                  child: Text(
                                    'Read more >',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12.sp,
                                      color: Colors.grey[900]?.withOpacity(0.5),
                                      letterSpacing: 0.192,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                      left: 20.sp,
                                    ),
                                    alignment: Alignment.topLeft,
                                    // color: Colors.orange,
                                    height: 9.42.sp,
                                    child: Image.asset(
                                        'assets/bookpng/group_23.png'))),
                            const Spacer(
                              flex: 1,
                            )
                          ],
                        )),
                    Expanded(
                        child: Image.asset(
                          'assets/book/1.png',
                          width: 62.5.sp,
                          height: 100.sp,
                          fit: BoxFit.fill,
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
