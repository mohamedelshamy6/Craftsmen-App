import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/ui/widgets/home_page/custom_list_view_1.dart';
import 'package:sw_project/ui/widgets/tff/search_tff.dart';
import 'package:sw_project/view_models/workers/worker_view_model.dart';

import '../../widgets/home_page/custom_list_view_2.dart';
import '../../widgets/home_page/custom_list_view_3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 215.h,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 195.h,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xff2176FF),
                              Color(0xff33A1FD),
                            ],
                            stops: [
                              0.1,
                              0.7
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.r),
                          bottomLeft: Radius.circular(40.0.r),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      right: 18.w,
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30.r,
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      right: 18.w,
                      child: Container(
                        width: 15.w,
                        height: 15.h,
                        decoration: const BoxDecoration(
                          color: Color(0xffF79824),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.h,
                      bottom: 93.h,
                      right: 169.w,
                      left: 160.w,
                      child: Text(
                        "خدماتك",
                        style: TextStyle(
                          fontSize: 32.sp,
                          color: const Color(0xffFFFFFF),
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                     Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.all(15.r),
                        child: const SearchTFF(hintText: "ابحث عن الخدمة التي تحتاجها"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 20.w, bottom: 5.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'services');
                            },
                            child: Text(
                              'المزيد',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff33A1FD),
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'الخدمات',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: const Color(0xff33A1FD),
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        height: 140.h,
                        width: double.infinity,
                        child: const CustomLV1(),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: CustomLV2(),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'المزيد',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff33A1FD),
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'التوصيات',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: const Color(0xff33A1FD),
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        height: 250.h,
                        child:   ChangeNotifierProvider<WorkerViewModel>(
                          create: (_) => WorkerViewModel()..getAllWorkers(),
                          child: const CustomLV3(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
