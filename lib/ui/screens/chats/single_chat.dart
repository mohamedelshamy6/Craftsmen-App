import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleChat extends StatelessWidget {
  const SingleChat({Key? key}) : super(key: key);

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
          'احمد طارق',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 24.sp,
            color: const Color(0xff33A1FD),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const CustomContainer(check: true),
              SizedBox(height: 40.h),
              const CustomContainer(check: false),
              SizedBox(height: 40.h),
              const CustomContainer(check: true),
              SizedBox(height: 40.h),
              const CustomContainer(check: false),
              const Spacer(),
              SizedBox(
                height: 100.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: const Color(0xff2699FB),
                          size: 30.r,
                        ),
                      ),
                    ),
                    Container(
                      width: 275.w,
                      height: 75.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 18.h),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                            borderSide: BorderSide(
                              color: Colors.grey[350]!,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                            borderSide: BorderSide(
                              color: Colors.grey[350]!,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff2699FB),
                          shape: BoxShape.circle,
                        ),
                        width: 40.w,
                        height: 40.h,
                        child: Center(
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 25.r,
                          ),
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

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.check,
  });

  final bool check;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: check
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: Container(
        height: 60.h,
        width: 280.w,
        decoration: BoxDecoration(
          color: check ? const Color(0xff2699FB) : Colors.grey[350],
          borderRadius: check
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                  topLeft: Radius.circular(16.r),
                )
              : BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
        ),
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
        child: Text(
          check ? 'السلام عليكم' : 'وعليكم السلام',
          textDirection: check ? TextDirection.rtl : TextDirection.ltr,
          style: TextStyle(
            color: check ? Colors.white : Colors.grey[600],
            fontSize: 18.sp,
            fontFamily: 'Cairo',
          ),
        ),
      ),
    );
  }
}
