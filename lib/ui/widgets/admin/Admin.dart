import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dv1 extends StatelessWidget {
  const Dv1({Key? key, required this.txtnum, required this.txt})
      : super(key: key);
  final String txtnum;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                txtnum,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff2699FB)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                txt,
                style: TextStyle(
                    fontSize: 9.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff2699FB)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DV2 extends StatelessWidget {
  const DV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25.h,
        child: VerticalDivider(
          width: 60.w,
          thickness: 2.0,
          color: const Color(0xffBCE0FD),
        ));
  }
}

