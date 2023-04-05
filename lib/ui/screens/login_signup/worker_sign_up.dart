import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/widgets/tff/custom_tff.dart';

import 'login_page.dart';

class WorkerSignUp extends StatelessWidget {
  const WorkerSignUp({super.key});

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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100.h,
            left: 25.w,
            right: 25.w,
            bottom: 65.h,
          ),
          child: Column(
            children: [
              Text(
                "إنشاء حساب",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff33A1FD),
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(height: 60.h),
              const CustomTFF(
                hintText: 'الاسم',
                kbType: TextInputType.name,
                id: 1,
              ),
              SizedBox(height: 15.h),
              const CustomTFF(
                hintText: 'البريد الالكتروني',
                kbType: TextInputType.emailAddress,
                id: 1,
              ),
              SizedBox(height: 15.h),
              const CustomTFF(
                hintText: 'كلمة السر',
                kbType: TextInputType.visiblePassword,
                id: 2,
              ),
              SizedBox(height: 15.h),
              const CustomTFF(
                hintText: 'تأكيد كلمة السر',
                kbType: TextInputType.visiblePassword,
                id: 2,
              ),
              SizedBox(height: 15.h),
              const CustomTFF(
                hintText: 'المهنة',
                kbType: TextInputType.text,
                id: 1,
              ),
              SizedBox(height: 15.h),
              const CustomTFF(
                hintText: 'رقم الهاتف',
                kbType: TextInputType.phone,
                id: 1,
              ),
              SizedBox(height: 45.h),
              SizedBox(
                width: 215.w,
                height: 55.h,
                child: Text(
                  textAlign: TextAlign.center,
                  "من خلال إنشاء حساب فإنك توافق على بنود الخدمة وخصوصية السياسة",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: const Color(0xff33A1FD),
                      fontFamily: 'Cairo'),
                ),
              ),
              SizedBox(height: 80.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(id: 2),
                      ),
                    );
                  },
                  child: Text(
                    "إستمرار",
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.w200,
                      color: const Color(0xffFFFFFF),
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
