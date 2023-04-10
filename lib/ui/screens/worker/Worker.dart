import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Worker extends StatelessWidget {
  const Worker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff2699FB),
              )),
          title: const Text(
            'احمد طارق',
            style: TextStyle(
                color: Color(0xff2699FB),
                fontFamily: 'Cairo',
                fontSize: 24,
                fontWeight: FontWeight.normal),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color(0xff2699FB),
                ))
          ],
          backgroundColor: const Color(0xffFFFFFF),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        color: const Color(0xffF1F9FF),
                        width: 380.w,
                        height: 208.h,
                        child: Image.asset(
                            'assets/icon_images/Icon material-photo.png'),
                      ),
                    ),
                    Positioned(
                      top: 140.h,
                      left: 230.w,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'مدرس فيزياء',
                                style: TextStyle(
                                    color: const Color(0xff2699FB),
                                    fontSize: 14.sp,
                                    fontFamily: 'cairo',
                                    fontWeight: FontWeight.bold),
                                textDirection: TextDirection.rtl,
                              ),
                              Text(
                                'المحله الكبري منشيه البكري',
                                style: TextStyle(
                                    color: const Color(0xff2699FB),
                                    fontSize: 10.sp,
                                    fontFamily: 'cairo',
                                    fontWeight: FontWeight.normal),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: const Color(0xffBCE0FD),
                            backgroundImage: const AssetImage(
                              'assets/icon_images/Symbol 6 – 1.png',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'معلومات العامل :',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Cairo',
                                fontSize: 18.sp,
                                color: const Color(0xff33A1FD)),
                          ),
                          Text(
                            'مقر العمل: سنتر ستارز بجوار شركه شاشة امام سلم الحميات ',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Cairo',
                                fontSize: 15.sp,
                                color: const Color(0xff33A1FD)),
                          ),
                          Text(
                            'ايام الاجازه: الجمعه ',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Cairo',
                                fontSize: 15.sp,
                                color: const Color(0xff33A1FD)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 100.w,
                    height: 35.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ارسال الطلب',
                        style: TextStyle(
                          fontFamily: 'cairo',
                          fontSize: 16.sp,
                          color: const Color(0xffFFFFFF)
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 50.w,bottom: 20.h),
                    alignment: Alignment.topRight,
                    child: Text(
                      'الاعمال المنجزه',
                      style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold, fontFamily: 'cairo',color: const Color(0xff2699FB)),
                    )),
                Image.asset('assets/icon_images/Group 111.png'),
                SizedBox(height: 5.h,),
                Image.asset('assets/icon_images/Group 111.png'),
                SizedBox(height: 5.h,),
                Image.asset('assets/icon_images/Group 111.png'),
                SizedBox(height: 5.h,),
                Image.asset('assets/icon_images/Group 111.png'),
              ],
            ),
          ),
        ));
  }
}
