import 'package:flutter/material.dart';
import 'package:sw_project/ui/screens/login_signup/login_page.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MainPageView(),
        'loginScreen': (context) =>const LoginScreen(),
      },
    );
  }
}
