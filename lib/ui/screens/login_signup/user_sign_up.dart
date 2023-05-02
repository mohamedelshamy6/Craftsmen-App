import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/common/constants.dart';
import 'package:sw_project/repositories/users/user_login.dart';
import 'package:sw_project/ui/screens/login_signup/user_login_page.dart';
import 'package:sw_project/ui/widgets/tff/custom_tff.dart';

import '../../../models/users/users_register_model.dart';
import '../../../view_models/users/user_login_view_model.dart';
import '../../../view_models/users/user_register_view_model.dart';

class UserSignUp extends StatelessWidget {
  const UserSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final userRegisterViewModel = Provider.of<UserRegisterViewModel>(context);
        GlobalKey<FormState> formKey =  GlobalKey <FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
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
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
                  child: Padding(
            padding: EdgeInsets.only(
              top: 100.h,
              left: 25.w,
              right: 25.w,
              bottom: 80.h,
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
                  validatorText: 'يجب ادخال اسم',
                ),
                SizedBox(height: 15.h),
                CustomTFF(
                  hintText: 'البريد الالكتروني',
                  kbType: TextInputType.emailAddress,
                  id: 1,
                  controller: emailController,
                  validatorText: 'يجب ادخال بريد الكتروني',
                ),
                SizedBox(height: 15.h),
                CustomTFF(
                  hintText: 'كلمة السر',
                  kbType: TextInputType.visiblePassword,
                  id: 2,
                  controller: passwordController,
                  validatorText: "يجب ادخال كلمه سر",
                ),
                SizedBox(height: 15.h),
                CustomTFF(
                  hintText: 'العنوان',
                  kbType: TextInputType.text,
                  id: 1,
                  controller: addressController,
                  validatorText: "يجب ادخال عنوان",
                ),
                SizedBox(height: 15.h),
                CustomTFF(
                  hintText: 'رقم الهاتف',
                  kbType: TextInputType.phone,
                  id: 1,
                  controller: phoneController,
                  validatorText: "يجب ادخال رقم الهاتف",
                ),
                SizedBox(height: 45.h),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ChangeNotifierProvider<UserLoginViewModel>(
                            create: (_) => UserLoginViewModel(
                              userLoginRepository: UserLoginRepository(),
                            ),
                            child: const UserLoginScreen(),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'هل لديك حساب بالفعل؟',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: const Color(0xff33A1FD),
                        fontFamily: 'Cairo',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
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
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if(formKey.currentState!.validate()){}
                      if(nameController.text.isNotEmpty&&emailController.text.isNotEmpty&&passwordController.text.isNotEmpty&&addressController.text.isNotEmpty&&phoneController.text.isNotEmpty){
                      final usersModel = UsersRegisterModel(
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        address: addressController.text,
                        role: UsersRegisterModel.constRole,
                        phone: phoneController.text,
                        notificationToken: 'abc123',
                      );
                      await userRegisterViewModel.registerUser(usersModel).then(
                            (value) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ChangeNotifierProvider<UserLoginViewModel>(
                                  create: (_) => UserLoginViewModel(
                                    userLoginRepository: UserLoginRepository(),
                                  ),
                                  child: const UserLoginScreen(),
                                ),
                              ),
                            ),
                          );
                      }else{}
                      if (userRegisterViewModel.registerErrorMessage != null) {
                        showCustomSnackBar(
                            userRegisterViewModel.registerErrorMessage!, context);
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
                ),
          )),
    );
  }
}
