import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/tff/custom_tff.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: const Color(0xff2699FB),
          size: 24.r,
        ),
        backgroundColor: const Color(0xffFFFFFF),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 120.h,
              bottom: 100.h,
              left: 25.w,
              right: 25.w,
            ),
            child: Column(
              children: [
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: const Color(
                      0xff33A1FD,
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                const CustomTFF(
                  hintText: 'البريد الالكتروني',
                  kbType: TextInputType.emailAddress,
                  id: 1,
                ),
                SizedBox(height: 16.h),
                const CustomTFF(
                  hintText: 'كلمة المرور',
                  kbType: TextInputType.visiblePassword,
                  id: 2,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        "نسيت كلمة المرور؟",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: const Color(0xff2699FB),
                            fontSize: 10.sp,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: 70.h),
                SizedBox(
                  height: 48.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                      ),
                    ),
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Cairo',
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    onPressed: () {
                      id == 1
                          ? Navigator.pushNamed(context, 'botNavBar')
                          : Navigator.pushNamed(context, 'admin');
                    },
                  ),
                ),
                SizedBox(height: 43.h),
                Text(
                  "أو عن طريق استخدام",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'cairo',
                    color: const Color(0xff2699FB),
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 28.h),
                SizedBox(
                  width: 200.w,
                  height: 56.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Image.asset(
                          'assets/icon_images/facebook.png',
                          width: 60.w,
                          fit: BoxFit.fitHeight,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                        child: Image.asset(
                          'assets/icon_images/twitter.png',
                          width: 60.w,
                          fit: BoxFit.fitHeight,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                        child: Image.asset(
                          'assets/icon_images/g+.png',
                          width: 60.w,
                          fit: BoxFit.fitHeight,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'userSignUp');
                  },
                  child: Text(
                    "ليس لديك حساب؟",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'cairo',
                      color: const Color(0xff2699FB),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
