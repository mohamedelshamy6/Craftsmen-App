import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClickedWidget extends StatelessWidget {
  const CustomClickedWidget({
    super.key,
    required this.title,
    required this.imageTitle,
    required this.location,
  });

  final String title, imageTitle, location;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, location);
        },
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 70.w,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: const Color(0xff33A1FD),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  imageTitle,
                  height: 260.h,
                  width: 260.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
