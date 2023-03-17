import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewRequest extends StatelessWidget {
  const ViewRequest({super.key});

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
            right: 25.w,
            left: 25.w,
            bottom: 100.h,
          ),
          child: Column(
            children: [
              Text(
                "الطلب ",
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff33A1FD),
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w200,
                    ),
                    hintTextDirection: TextDirection.rtl,
                    hintMaxLines: 15,
                    hintText:
                        'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات',
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
                    "قبول الطلب والتواصل مع صاحبه",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xffFF1616),
                    ),
                  ),
                  child: Text(
                    " رفض الطلب",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
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
