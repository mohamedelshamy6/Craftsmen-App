import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendRequest extends StatelessWidget {
  const SendRequest({super.key, required this.id});

  final int id;

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100.h,
            left: 25.w,
            right: 25.w,
            bottom: 100.h,
          ),
          child: Column(
            children: [
              Text(
                "برجاء كتابة طلبك بالتفصيل",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                  color: const Color(0xff33A1FD),
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 220.h,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  minLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff33A1FD),
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w200,
                    ),
                    hintTextDirection: TextDirection.rtl,
                    hintText:
                        'برجاء كتابة تفاصيل طلبك والسعر المتوقع لتنفيذ طلبك لتسهيل عملية التواصل',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide: const BorderSide(
                        color: Color(0xff33A1FD),
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Color(0xff33A1FD),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 45.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff33A1FD),
                    ),
                  ),
                  child: Text(
                    "إرسال الطلب",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: const Color(0xffFFFFFF),
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w300,
                    ),
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
