import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
        left: 20.0,
        top: 200.0,
        bottom: 100.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/page_view_images/Hero_m.png',
            height: 500,
            width: double.infinity,
          ),
          const SizedBox(height: 50),
          const SizedBox(
            width: 600,
            child: Text(
              'إذا كنت صاحب مهنة او عمل حر فكل يوم بالنسبة لك معنا هو يوم مميز, سوف نوفر لك العديد من فرص العمل الرائعه مع زبائن دائمين',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                color: Color(0xff2699FB),
                fontSize: 25,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
