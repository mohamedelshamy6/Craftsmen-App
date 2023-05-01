import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTFF extends StatefulWidget {
  const CustomTFF({
    super.key,
    required this.hintText,
    required this.kbType,
    required this.id,
    required this.controller, required this.validatorText,
  });

  final String hintText;
  final TextInputType kbType;
  final int id;
  final TextEditingController controller;
  final String validatorText;


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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.validatorText;
         }
        if(widget.hintText=='البريد الالكتروني'){
          if (value.contains('@') == false){
            return 'يجب اضافه علامه @ عند كتابه كتابه البريد الالكتروني';
          }
        }
        if(widget.hintText=='كلمة المرور'){
          if (value.length < 8){
            return 'يجب اضافه كلمه مرور اكبر من اوتساوى 8 ';
          }
        }
        if(widget.hintText==' الاسم'){
          if (value.length<3){
            return '   يجب اضافه 3 حروف';
          }
        }
        if(widget.hintText=='العنوان'){
          if (value.contains('@') == false){
            return 'يجب اضافه علامه @ عند كتابه كتابه البريد الالكتروني';
          }
        }
        if(widget.hintText=='رقم الهاتف'){
          if (value.length < 11){
            return 'يجب اضافه رقم هاتف اعداده اكبر من 10';
          }
        }
        if(widget.hintText==' المهنة'){
          if (value=='u'||value=='w'){
            return 'يجب اضافه مهنه';
          }
        }
      
        return null;
      },
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Color(0xff33A1FD), width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Color(0xff33A1FD), width: 2),
        ),
      ),
    );
  }
}
