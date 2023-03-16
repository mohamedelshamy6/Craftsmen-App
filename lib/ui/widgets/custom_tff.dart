import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTFF extends StatefulWidget {
  const CustomTFF({
    super.key,
    required this.hintText,
    required this.kbType,
    required this.id,
  });

  final String hintText;
  final TextInputType kbType;
  final int id;

  @override
  State<CustomTFF> createState() => _CustomTFFState();
}

class _CustomTFFState extends State<CustomTFF> {
  @override
  Widget build(BuildContext context) {
    var check = true;
    return TextFormField(
      obscureText: widget.id == 1
          ? false
          : check == true
              ? true
              : false,
      textAlign: TextAlign.end,
      keyboardType: widget.kbType,
      decoration: InputDecoration(
        prefixIcon: widget.id == 2
            ? IconButton(
                onPressed: () {
                  setState(() {
                    check = !check;
                  });
                },
                icon: Icon(
                  check == false ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xff33A1FD),
                ),
              )
            : null,
        contentPadding: widget.id == 2
            ? EdgeInsets.symmetric(vertical: 16.h, horizontal: 10.w)
            : EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: const Color(0xff33A1FD),
          fontSize: 12.sp,
          fontFamily: 'cairo',
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Color(0xff33A1FD), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Color(0xff33A1FD), width: 2),
        ),
      ),
    );
  }
}
