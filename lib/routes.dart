import 'package:nursery_app/home_screen/home_screen.dart';
// import 'package:nursery_app/screens/Attendance/Attendance.dart';
import 'package:nursery_app/screens/form_screen.dart';
import 'package:nursery_app/screens/home.dart';
import 'package:nursery_app/screens/login_screen/login_screen.dart';
import 'package:nursery_app/screens/login_screen/login_screenTh.dart';
import 'package:nursery_app/screens/splash_screen/Splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:nursery_app/screens/splash_screen/beginning.dart';
// ignore: unused_import
import 'package:nursery_app/attendance.dart';

import 'home_screen/my profile/my_profile.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  Beginning.routeName: (context) => const Beginning(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  LoginScreenTh.routeName: (context) => const LoginScreenTh(),
  HomeTH.routeName: (context) => const HomeTH(),
  Attendance.routeName: (context) => Attendance(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MyProfileScreen.routeName: (context) => const MyProfileScreen(),
  FormScreen.routeName: (context) => const FormScreen(),
};
