import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/requests/tabs.dart';
import '../../widgets/tff/search_tff.dart';

class Requests extends StatelessWidget {
  const Requests({Key? key}) : super(key: key);

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
        centerTitle: true,
        title: Text(
          'الطلبات',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 24.sp,
            color: const Color(0xff33A1FD),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            children: [
              const SearchTFF(hintText: 'ابحث عن الطلب'),
              SizedBox(height: 20.h),
              const Tabs(),
            ],
          ),
        ),
      ),
    );
  }
}
