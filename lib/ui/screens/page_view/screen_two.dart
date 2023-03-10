import 'package:flutter/material.dart';

import '../../widgets/page_view_content.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPageViewContent(
      title:
          'هل تبحث عن عامل ثقه لتوظيفه؟ يمكنك الاطلاع علي اكثر من عامل ومشاهدة اخر أعمالهم واختيار من يناسبك بسهولة',
      imageTitle: 'assets/images/page_view_images/Hero_f.png',
    );
  }
}
