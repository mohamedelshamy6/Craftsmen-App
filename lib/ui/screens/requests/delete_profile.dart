import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.r),
          width: 300.w,
          height: 500.h,
          color: const Color(0xff7CAFE5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.h),
                child: Image.asset(
                  'assets/icon_images/Icon ionic-ios-warning.png',
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'هل انت متاكد من رغبتك في حذف الحساب',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 100.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120.w,
                    height: 44.h,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {},
                      child: Text(
                        'حذف',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120.w,
                    height: 44.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'الغاء الحذف',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
