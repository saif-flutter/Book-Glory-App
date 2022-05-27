import 'package:book/view/onboarding_screens/screen_four.dart';
import 'package:book/view/onboarding_screens/screen_one.dart';
import 'package:book/view/onboarding_screens/screen_three.dart';
import 'package:book/view/onboarding_screens/screen_two.dart';
import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          PageView(
            controller: pageController,
            children: const [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
              ScreenFour(),
            ],
          ),
          Positioned(
              bottom: 150.sp,
              right: 160.sp,
              child: SmoothPageIndicator(

                controller: pageController,
                count: 4,
                effect:SlideEffect(
                    spacing:  8.sp,


                    paintStyle:  PaintingStyle.stroke,
                    strokeWidth:  1.5,

                    dotColor:  Colors.grey,
                    activeDotColor:  MyColor.textColor
                ),
              )),
        ],
      ),
    );
  }
}
