import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sw_project/repositories/users/user_login.dart';
import 'package:sw_project/ui/screens/login_signup/login_page.dart';
import 'package:sw_project/ui/widgets/profile.dart';

import '../../../common/constants.dart';
import '../../../models/users/users_model.dart';
import '../../../view_models/users/user_login_view_model.dart';
import '../../../view_models/users/user_logout_view_model.dart';
import '../../../view_models/users/users_view_model.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  Future<UserModel> test(ctx) async {
    final userViewModel = Provider.of<UserViewModel>(ctx);
    var user = await userViewModel.user ?? [];
    var index = user[0];
    return index;
  }

  @override
  Widget build(BuildContext context) {
    final userLogoutViewModel = Provider.of<UserLogoutViewModel>(context);
    return FutureBuilder(
      future: test(context),
      builder: (context, snapshot) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back,
            color: Color(0xff33A1FD),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'workerProfileEdit');
              },
              icon: const Icon(
                Icons.settings,
                color: Color(0xff33A1FD),
              ),
            ),
            IconButton(
              onPressed: () async {
                var token = await getTokenFromPrefs();
                userLogoutViewModel.logout(token!).then(
                      (value) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ChangeNotifierProvider<UserLoginViewModel>(
                            create: (_) => UserLoginViewModel(
                              userLoginRepository: UserLoginRepository(),
                            ),
                            child: const LoginScreen(id: 1),
                          ),
                        ),
                      ),
                    );
                if (userLogoutViewModel.logoutErrorMessage != null) {
                  showCustomSnackBar(
                      userLogoutViewModel.logoutErrorMessage!, context);
                }
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.clear();
              },
              icon: const Icon(
                Icons.logout,
                color: Color(0xff33A1FD),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.r,
                backgroundImage: const AssetImage(
                  'assets/images/profile.png',
                ),
              ),
            ),
            Text(
              snapshot.data?.name ?? '',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
                color: const Color(0xff2699FB),
              ),
            ),
            Text(
              snapshot.data?.address ?? '',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                fontFamily: 'Cairo',
                color: const Color(0xff2699FB),
              ),
            ),
            SizedBox(height: 30.h),
            Stack(
              children: [
                Container(
                  width: 380.w,
                  height: 184.h,
                  color: Colors.white,
                  child: const VarProfile(
                    textOne: 'الطلبات المرسله',
                    textTwo: 'اخرين+16',
                  ),
                ),
                Positioned(
                  top: 70.h,
                  right: 20.w,
                  child: const UserP(),
                ),
                Positioned(
                  left: 20.w,
                  top: 70.h,
                  child: const UserP(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 380.w,
                  height: 184.h,
                  color: const Color(0xffBCE0FD),
                  child: const VarProfile(
                    textOne: 'الطلبات التي تم رفض التعامل معها',
                    textTwo: 'اخرين+11',
                  ),
                ),
                Positioned(
                  top: 70.h,
                  right: 20.w,
                  child: const UserP(),
                ),
                Positioned(
                  left: 20.w,
                  top: 70.h,
                  child: const UserP(),
                ),
              ],
            ),
            SizedBox(height: 70.h),
            SizedBox(
              width: 380.w,
              height: 47.h,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xff33A1FD),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'التقديم كامل في التطبيق',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
