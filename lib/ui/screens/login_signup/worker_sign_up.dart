import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/ui/widgets/tff/custom_tff.dart';
import 'package:sw_project/view_models/workers/worker_register_view_model.dart';

import '../../../common/constants.dart';
import '../../../models/workers/worker_register_model.dart';
import '../../../repositories/workers/worker_login.dart';
import '../../../view_models/workers/worker_login_view_model.dart';
import 'login_page.dart';

class WorkerSignUp extends StatelessWidget {
  const WorkerSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final workerRegisterViewModel =
        Provider.of<WorkerRegisterViewModel>(context);

    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController jobController = TextEditingController();
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
              CustomTFF(
                hintText: 'الاسم',
                kbType: TextInputType.name,
                id: 1,
                controller: nameController,
              ),
              SizedBox(height: 15.h),
              CustomTFF(
                hintText: 'البريد الالكتروني',
                kbType: TextInputType.emailAddress,
                id: 1,
                controller: emailController,
              ),
              SizedBox(height: 15.h),
              CustomTFF(
                hintText: 'كلمة السر',
                kbType: TextInputType.visiblePassword,
                id: 2,
                controller: passwordController,
              ),
              SizedBox(height: 15.h),
              CustomTFF(
                hintText: 'العنوان',
                kbType: TextInputType.text,
                id: 1,
                controller: addressController,
              ),
              SizedBox(height: 15.h),
              CustomTFF(
                hintText: 'المهنة',
                kbType: TextInputType.text,
                id: 1,
                controller: jobController,
              ),
              SizedBox(height: 15.h),
              CustomTFF(
                hintText: 'رقم الهاتف',
                kbType: TextInputType.phone,
                id: 1,
                controller: phoneController,
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
                  onPressed: () async {
                    final workerModel = WorkerRegisterModel(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      address: addressController.text,
                      role: 'w',
                      phone: phoneController.text,
                      notificationToken: 'abc123',
                      jobName: jobController.text,
                    );
                    await workerRegisterViewModel
                        .registerWorker(workerModel)
                        .then((value) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangeNotifierProvider<
                                    WorkerLoginViewModel>(
                                  create: (_) => WorkerLoginViewModel(
                                    workerLoginRepository:
                                        WorkerLoginRepository(),
                                  ),
                                  child: const LoginScreen(id: 2),
                                ),
                              ),
                            ));
                    if (workerRegisterViewModel.registerErrorMessage != null) {
                      showCustomSnackBar(
                          workerRegisterViewModel.registerErrorMessage!,
                          context);
                    }
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
