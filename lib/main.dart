import 'package:book/controller/cubit/navigation_cubit/navigation_cubit.dart';
import 'package:book/controller/cubit/tab_bar_cubit.dart';
import 'package:book/view/onboarding_screens/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/cubit/check_box_cubit.dart';
import 'controller/cubit/phone_verification_cubit.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CheckBoxCubit>(
          create: (context) => CheckBoxCubit(false),
        ),
        BlocProvider<PhoneVerificationCubit>(
          create: (context) => PhoneVerificationCubit(),
        ),

        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(0),
        ),
        BlocProvider<TabBarCubit>(
          create: (context) => TabBarCubit(0),
        ),


      ],
      child: ScreenUtilInit(

        builder: (BuildContext context, Widget? child) =>
         MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home:   const OnboardingScreen(),
        ),
        designSize: const Size(375,812),
      ),
    );
  }
}

