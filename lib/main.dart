import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/screens/login_signup/login_page.dart';
import 'package:sw_project/ui/screens/login_signup/sign_up.dart';
import 'package:sw_project/ui/screens/page_view/page_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
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
            '/': (context) => child!,
            'loginScreen': (context) => const LoginScreen(),
            'signUpScreen': (context) => const SignUp(),
          },
        );
      },
      child: const MainPageView(),
    );
  }
}
