import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/screens/admin/adminScreen.dart';
import 'package:sw_project/ui/screens/body/bottom_nav_bar.dart';
import 'package:sw_project/ui/screens/chats/single_chat.dart';
import 'package:sw_project/ui/screens/login_signup/user_sign_up.dart';
import 'package:sw_project/ui/screens/login_signup/worker_profile_edit.dart';
import 'package:sw_project/ui/screens/login_signup/worker_sign_up.dart';
import 'package:sw_project/ui/screens/page_view/page_view.dart';
import 'package:sw_project/ui/screens/requests/requests.dart';
import 'package:sw_project/ui/screens/requests/view_request.dart';
import 'package:sw_project/ui/screens/serve/serve_one.dart';
import 'package:sw_project/ui/screens/worker/Worker.dart';


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
            '/': (context) => child!,
            'userSignUp': (context) => const UserSignUp(),
            'workerSignUp': (context) => const WorkerSignUp(),
            'botNavBar': (context) => const BottomNavBar(),
            'services': (context) => const ServeOne(),
            'singleChat': (context) => const SingleChat(),
            'admin': (context) => const AdminScreen(),
            'requests': (context) => const Requests(),
            'workerProfileEdit':(context) => const WorkerProfileEdit(),
            'viewRequest':(context) => const ViewRequest(),
            'viewWorker':(context) => const Worker(),
          },
        );
      },
      child: const MainPageView(),
    );
  }
}
