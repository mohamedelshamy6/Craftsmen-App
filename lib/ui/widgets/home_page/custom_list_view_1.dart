import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLV1 extends StatelessWidget {
  const CustomLV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List imageTitle = [
      'assets/images/home_page_images/plumber.png',
      'assets/images/home_page_images/delivery.png',
      'assets/images/home_page_images/dev.png',
      'assets/images/home_page_images/teacher.png',
      'assets/images/home_page_images/cooker.png',
      'assets/images/home_page_images/cleaner.png',
      'assets/images/home_page_images/washer.png',
      'assets/images/home_page_images/babysitter.png',
      'assets/images/home_page_images/carpenter.png',
    ];
    List title = [
      'سباك',
      'رجل التوصيل',
      'مبرمج',
      'مدرس خصوصي',
      'طباخ',
      'عامل نظافة',
      'صيانة وغسيل السيارات',
      'جليسة اطفال',
      'نجار'
    ];

    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(width: 25.w),
      padding: EdgeInsets.only(left: 25.w),
      shrinkWrap: true,
      itemCount: title.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageTitle.reversed.elementAt(index),
              height: 110.h,
            ),
            Text(
              title.reversed.elementAt(index),
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 12.sp,
                color: const Color(0xff33A1FD),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
