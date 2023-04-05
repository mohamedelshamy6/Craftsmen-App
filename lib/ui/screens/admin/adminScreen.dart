import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/widgets/admin/Admin.dart';
import 'package:sw_project/ui/widgets/profile.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'workerProfileEdit');
              },
              icon: const Icon(
                Icons.settings,
                color: Color(0xff33A1FD),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.r,
              backgroundImage: const AssetImage('assets/images/profile.png'),
            ),
          ),
          Text(
            'Heba Asker',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
                color: const Color(0xff2699FB)),
          ),
          Text(
            'المحله الكبري,منشيه البكري',
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
                fontFamily: 'Cairo',
                color: const Color(0xff2699FB)),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 300.w,
            height: 43.h,
            child: Text(
              'انا هبه طارق عسكر! من المحله الكبري , منشيه البكري بالمحله اتصل بي علي 01020937901 ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Cairo',
                  color: const Color(0xff2699FB)),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: 316.w,
            height: 42.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Dv1(txtnum: '18', txt: 'JOP REQUEST'),
                DV2(),
                Dv1(txtnum: '18', txt: 'JOP REQUEST'),
                DV2(),
                Dv1(txtnum: '18', txt: 'JOP REQUEST'),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Stack(
            children: [
              Container(
                width: 380.w,
                height: 184.h,
                color: const Color(0xffF1F9FF),
                child:
                    const VarProfile(textOne: 'الطلبات', textTwo: 'اخرين16+'),
              ),
              Positioned(top: 70.h, right: 20.w, child: const UserP()),
              Positioned(left: 20.w, top: 70.h, child: const UserP()),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Stack(
            children: [
              Container(
                width: 380.w,
                height: 184.h,
                color: const Color(0xffF1F9FF),
                child: const VarProfile(
                  textOne: 'الاعمال المنجزه ',
                  textTwo: 'اخرين138+',
                ),
              ),
              Positioned(top: 70.h, right: 20.w, child: const UserP()),
              Positioned(left: 20.w, top: 70.h, child: const UserP()),
            ],
          ),
        ],
      ),
    );
  }
}
