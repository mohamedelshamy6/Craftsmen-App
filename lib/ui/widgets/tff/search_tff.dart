import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTFF extends StatelessWidget {
  const SearchTFF({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 6.r,
            color: Colors.grey[300]!,
            offset: Offset(0.0, 7.h),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextFormField(
        textAlign: TextAlign.end,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 23.r,
                color: const Color(0xff33A1FD),
              ),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: const Color(0xff33A1FD),
            fontSize: 12.sp,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
