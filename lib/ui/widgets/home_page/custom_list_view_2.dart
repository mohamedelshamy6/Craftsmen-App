import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLV2 extends StatelessWidget {
  const CustomLV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView(
        padding: EdgeInsets.only(left: 25.w),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 310.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: const Color(0xff33A1FD),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                    bottom: 20.h,
                    left: 15.w,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 180.w,
                        child: Text(
                          'وفر اكتر مع خصومات للمستخدمين الجدد',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Center(
                        child: Text(
                          '50%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/home_page_images/maid.png',
                ),
              ],
            ),
          ),
          SizedBox(width: 20.w),
          Container(
            width: 310.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: const Color(0xff33A1FD),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 31.h,
                    bottom: 53.h,
                    left: 15.w,
                  ),
                  child: SizedBox(
                    width: 180.w,
                    child: Text(
                      'اختر الخدمة التي تريدها وسيصل العامل المناسب إلى منزلك على الفور',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/home_page_images/gps.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
