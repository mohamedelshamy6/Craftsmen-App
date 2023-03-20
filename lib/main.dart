import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/screens/Home/home_page.dart';
import 'package:sw_project/ui/screens/body/bottom_nav_bar.dart';
import 'package:sw_project/ui/screens/login_signup/login_page.dart';
import 'package:sw_project/ui/screens/login_signup/sign_up.dart';
import 'package:sw_project/ui/screens/login_signup/worker_profile_edit.dart';
import 'package:sw_project/ui/screens/page_view/page_view.dart';
import 'package:sw_project/ui/screens/requests/delete_profile.dart';
import 'package:sw_project/ui/screens/serve/serve_one.dart';
import 'package:sw_project/ui/screens/userprofile/user_profile.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) =>UserProfile(),
            'loginScreen': (context) => const LoginScreen(),
            'signUpScreen': (context) => const SignUp(),
            'botNavBar': (context) => const BottomNavBar(),
            'services':(context) => const ServeOne(),
          },
        );
      },
      child: const MainPageView(),
    );
  }
}
