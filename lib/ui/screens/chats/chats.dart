import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/widgets/tff/search_tff.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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
          'المحادثات',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 24.sp,
            color: const Color(0xff33A1FD),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.w),
          child: Column(
            children: [
              const SearchTFF(hintText: "ابحث بالاسم"),
              SizedBox(height: 35.h),
              SingleChildScrollView(
                child: SizedBox(
                  height: 635.h,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 30.h),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.pushNamed(context, 'singleChat'),
                      child: SizedBox(
                        height: 60.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '2h',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontFamily: 'Cairo',
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                index == 0
                                    ? Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xff2699FB),
                                          shape: BoxShape.circle,
                                        ),
                                        width: 18.w,
                                        height: 18.h,
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontFamily: 'Cairo',
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                            SizedBox(
                              width: 300.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 285.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        index == 0
                                            ? Container()
                                            : index == 1 || index == 3
                                                ? Icon(
                                                    Icons.check,
                                                    color: Colors.grey,
                                                    size: 20.r,
                                                  )
                                                : SizedBox(
                                                    width: 15.w,
                                                    height: 15.h,
                                                    child: Image.asset(
                                                      'assets/icon_images/blue_icons/double_check.png',
                                                    ),
                                                  ),
                                        Text(
                                          'احمد طارق',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      width: 275.w,
                                      child: Text(
                                        'السلام عليكم ازيك يا مستر كنت عاوزه اعرف معاد اولي ثانوي في ايام سبت اتنين اربع ',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.grey,
                                          fontFamily: 'Cairo',
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/profile_g.png',
                              width: 60.w,
                              height: 60.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    itemCount: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
