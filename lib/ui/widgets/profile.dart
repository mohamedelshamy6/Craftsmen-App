import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserP extends StatelessWidget {
  const UserP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.w,
      height: 89.h,
      color: const Color(0xffBCE0FD),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.r),
        child: Text(
          'انشاء برنامج كاشير لمطعم THE BUN',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.normal,
            color: const Color(0xff2699FB),
          ),
        ),
      ),
    );
  }
}

class VarProfile extends StatelessWidget {
  const VarProfile({Key? key, required this.textOne, required this.textTwo})
      : super(key: key);

  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Text(
              textTwo,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xff2699FB),
                fontWeight: FontWeight.normal,
                fontFamily: 'Cairo',
              ),
            ),
            const Spacer(),
            Text(
              textOne,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: const Color(0xff2699FB),
                fontSize: 17.sp,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
