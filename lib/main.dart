import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/repositories/users/user_login.dart';
import 'package:sw_project/repositories/users/user_register.dart';
import 'package:sw_project/repositories/workers/worker_logout.dart';
import 'package:sw_project/repositories/workers/worker_register.dart';
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
import 'package:sw_project/ui/screens/worker/worker.dart';
import 'package:sw_project/view_models/users/user_register_view_model.dart';
import 'package:sw_project/view_models/workers/worker_logout_view_model.dart';
import 'package:sw_project/view_models/workers/worker_register_view_model.dart';
import 'package:sw_project/view_models/workers/worker_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var result = await getTokenFromPrefs();
  Paint.enableDithering = true;
  runApp(MyApp(
    token: result ?? '',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.token}) : super(key: key);
  final String token;

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
            'userSignUp': (context) =>
                ChangeNotifierProvider<UserRegisterViewModel>(
                  create: (_) => UserRegisterViewModel(
                    userRegisterRepository: UserRegisterRepository(),
                  ),
                  child: const UserSignUp(),
                ),
            'workerSignUp': (context) =>
                ChangeNotifierProvider<WorkerRegisterViewModel>(
                  create: (_) => WorkerRegisterViewModel(
                    workerRegisterRepository: WorkerRegisterRepository(),
                  ),
                  child: const WorkerSignUp(),
                ),
            'botNavBar': (context) => const BottomNavBar(),
            'services': (context) => const ServeOne(),
            'singleChat': (context) => const SingleChat(),
            'admin': (context) => MultiProvider(
                  providers: [
                    ChangeNotifierProvider<WorkerLogoutViewModel>(
                      create: (_) => WorkerLogoutViewModel(
                        workerLogoutRepository: WorkerLogoutRepository(),
                      ),
                    ),
                    ChangeNotifierProvider<WorkerViewModel>(
                      create: (_) => WorkerViewModel()..getWorker(),
                    ),
                  ],
                  child: const AdminScreen(),
                ),
            'requests': (context) => const Requests(),
            'workerProfileEdit': (context) => const WorkerProfileEdit(),
            'viewRequest': (context) => const ViewRequest(),
            'viewWorker': (context) => const Worker(),
          },
        );
      },
      child: token != null && token.isNotEmpty
          ? const BottomNavBar()
          : const MainPageView(),
    );
  }
}
