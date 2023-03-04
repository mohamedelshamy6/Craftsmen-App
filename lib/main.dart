import 'package:flutter/material.dart';
import 'package:sw_project/ui/screens/login_signup/login_page.dart';
import 'package:sw_project/ui/screens/login_signup/sign_up.dart';
import 'package:sw_project/ui/screens/login_signup/user_profile_edit.dart';
import 'package:sw_project/ui/screens/login_signup/worker_profile_edit.dart';
import 'package:sw_project/ui/screens/login_signup/worker_sign_in.dart';
import 'package:sw_project/ui/screens/login_signup/worker_sign_up.dart';
import 'package:sw_project/ui/screens/requests/send_request.dart';
import 'package:sw_project/ui/screens/requests/veiw_request.dart';
import 'package:sw_project/ui/screens/serve/ServeOne.dart';
import 'package:sw_project/ui/screens/serve/ServeTwo.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServeTwo(),
    );
  }
}
