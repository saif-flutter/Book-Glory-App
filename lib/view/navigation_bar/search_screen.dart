import 'package:book/view/tab_bar_screens/genre_screen.dart';
import 'package:book/view/tab_bar_screens/new_release_screen.dart';
import 'package:book/view/tab_bar_screens/the_art_screen.dart';
import 'package:book/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controller/cubit/tab_bar_cubit.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final PageController controller = PageController(initialPage: 0);
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20.sp, left: 20.sp, right: 20.sp),
        child: ListView(
          children: [
            const SearchTextFieldWidget(),
            SizedBox(height: 30.sp),
            BlocBuilder<TabBarCubit, int>(
              builder: (context, state) {
                return SizedBox(
                  // color: Colors.yellow,
                  height: 29.sp,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      getTabs(
                          text: 'Genre',
                          onTap: () {
                            controller.jumpToPage(0);
                            context.read<TabBarCubit>().getIndex(test: 0);
                          },
                          currentIndex: state,
                          index: 0),
                      getTabs(
                          text: 'New Release',
                          onTap: () {
                            controller.jumpToPage(1);
                            context.read<TabBarCubit>().getIndex(test: 1);
                          },
                          currentIndex: state,
                          index: 1),
                      getTabs(
                          text: 'The Arts',
                          onTap: () {
                            controller.jumpToPage(2);
                            context.read<TabBarCubit>().getIndex(test: 2);
                          },
                          currentIndex: state,
                          index: 2),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 0.sp,
              // color: Colors.red,
              child: PageView(
                controller: controller,
                children: const [
                  GenreScreen(),
                  NewReleaseScreen(),
                  TheArtScreen(),
                ],
              ),
            ),
            SizedBox(
              height: 25.sp,
            ),
            SizedBox(
              height: 574.sp,
              // color: Colors.red,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.sp,
                    mainAxisSpacing: 20.sp),
                children: [
                  Container(
                      width: 158.sp,
                      height: 202.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        color: const Color(0xFFB7143C),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex:2,
                              child: SizedBox(
                            width: 114.sp,
                            height: 15.sp,
                            child: Center(
                              child: Text(
                                'Biography',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          Expanded(
                            flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                            'assets/genre/biography.png',
                            fit: BoxFit.fill,

                          ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFFE6A500),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Business',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/business.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFFEF4C45),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Children',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/children.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFFF46217),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Cookery',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/cookery.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFF09ADE2),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Fiction',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/fiction.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFFD36A43),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Graphic Novels',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/graphic_novels.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFFD36A43),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Biography',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/biography.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                  Container(
                    width: 158.sp,
                    height: 202.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFFD36A43),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                              flex:2,
                              child: SizedBox(
                                width: 114.sp,
                                height: 15.sp,
                                child: Center(
                                  child: Text(
                                    'Biography',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                // color: Colors.black,
                                height: 118.66.sp,
                                width: 75.5.sp,
                                child: Image.asset(
                                  'assets/genre/biography.png',
                                  fit: BoxFit.fill,

                                ),
                              )),
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget getTabs({
  required String text,
  required VoidCallback onTap,
  required int currentIndex,
  required int index,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.only(left: 23.sp),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: 24.sp,
          color: currentIndex == index ? const Color(0xFF242126) : Colors.grey,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
