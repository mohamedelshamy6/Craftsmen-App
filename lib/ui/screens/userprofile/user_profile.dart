import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/widgets/profile.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff33A1FD),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.settings,
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
            'Abdo Fahmy',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              color: const Color(0xff2699FB),
            ),
          ),
          Text(
            'طنطا',
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
    );
  }
}
