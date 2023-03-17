import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServeOne extends StatelessWidget {
  const ServeOne({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "مهندس",
      "مبرمج",
      "طبيب",
      "مدرس خصوصي",
      "صيدلي",
      "جارد",
      "ماركت",
      "نجار مسلح",
      "ميكانيكي",
      "عامل بناء",
      "رجل توصيل",
      "عامل نضافه",
      "جزار",
      "غسيل عربيات",
      "طباخ",
      "كهربائي",
      "استورجي",
      "حداد",
      "نقاش",
      "نجار",
      "تمريض منزلى",
      "حلاق",
    ];
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
          'الخدمات',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 24.sp,
            color: const Color(0xff33A1FD),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 25.h,
            right: 25.w,
            left: 25.w,
            bottom: 20.h,
          ),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
            ),
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.r),
                    ),
                    color: const Color(0xffF1F9FF),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffBCE0FD),
                    ),
                  ),
                  margin: EdgeInsets.all(5.w),
                  child: Center(
                    child: Text(
                      titles[index],
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: const Color(0xff33A1FD),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}