import 'package:flutter/material.dart';

import '../../widgets/page_view_content.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPageViewContent(
      title:
          'إذا كنت صاحب مهنة او عمل حر فكل يوم بالنسبة لك معنا هو يوم مميز, سوف نوفر لك العديد من فرص العمل الرائعه مع زبائن دائمين',
      imageTitle: 'assets/images/page_view_images/Hero_m.png',
    );
  }
}


