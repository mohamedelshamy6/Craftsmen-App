import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageViewContent extends StatelessWidget {
  const CustomPageViewContent({
    super.key,
    required this.title,
    required this.imageTitle,
  });

  final String title, imageTitle;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(
        right: 18.h,
        left: 18.h,
        top: 180.h,
        bottom: 70.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageTitle,
            height:391.h,
            width: 391.w,
          ),
          SizedBox(height: 35.h),
          SizedBox(
            width: mq.size.width * 0.85,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                color: const Color(0xff2699FB),
                fontSize: 18.sp,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
