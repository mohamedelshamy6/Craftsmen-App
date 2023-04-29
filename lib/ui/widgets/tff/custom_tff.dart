import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTFF extends StatefulWidget {
  const CustomTFF({
    super.key,
    required this.hintText,
    required this.kbType,
    required this.id,
    required this.controller,
  });

  final String hintText;
  final TextInputType kbType;
  final int id;
  final TextEditingController controller;

  @override
  State<CustomTFF> createState() => _CustomTFFState();
}

class _CustomTFFState extends State<CustomTFF> {
  bool? check;

  @override
  void initState() {
    check = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.id == 1
          ? false
          : check!
              ? true
              : false,
      textAlign: TextAlign.end,
      keyboardType: widget.kbType,
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: widget.id == 2
            ? IconButton(
                onPressed: () {
                  setState(() {
                    check = !check!;
                  });
                },
                icon: Icon(
                  !check! ? Icons.visibility : Icons.visibility_off,
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
