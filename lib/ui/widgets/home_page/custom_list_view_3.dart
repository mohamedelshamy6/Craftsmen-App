import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLV3 extends StatelessWidget {
  const CustomLV3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageTitle = [
      'assets/images/home_page_images/worker2.png',
      'assets/images/home_page_images/worker1.png',
      'assets/images/home_page_images/worker3.png',
      'assets/images/home_page_images/worker4.png'
    ];
    List<String> title = ['مبرمج', 'نجار', 'جليسة اطفال', 'مدرس'];

    return ListView.separated(
      padding: EdgeInsets.only(left: 25.h),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => SizedBox(width: 15.w),
      itemBuilder: (context, index) => InkWell(
        onTap: () {},
        child: SizedBox(
          width: 150.w,
          child: Column(
            children: [
              Container(
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    topRight: Radius.circular(5.r),
                  ),
                  color: const Color(0xff33A1FD),
                ),
                child: Center(
                  child: Text(
                    title[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 180.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.r),
                    bottomRight: Radius.circular(5.r),
                  ),
                  color: const Color(0xffF1FAEE),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5.h,
                    bottom: 5.h,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 35.r,
                          backgroundImage: AssetImage(
                            imageTitle[index],
                          ),
                        ),
                        Text(
                          'Ahmed Tarek',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial',
                            color: const Color(0xff33A1FD),
                          ),
                        ),
                        Text(
                          '350 طلب',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Cairo',
                            color: const Color(0xff33A1FD),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: const Color(0xffFFB703),
                              size: 20.r,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60.w,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xff33A1FD),
                              ),
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'عرض',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      itemCount: imageTitle.length,
    );
  }
}
