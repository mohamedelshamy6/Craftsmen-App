import 'package:flutter/material.dart';
import '../../widgets/page_view/page_view_clicked_widget.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).viewInsets.vertical + 25,
      ),
      child: Column(
        children: const [
          CustomClickedWidget(
            title: 'مستخدم',
            imageTitle: 'assets/images/page_view_images/Hero_f.png',
          ),
          Divider(
            color: Color(0xff33A1FD),
thickness: 2,
          ),
          CustomClickedWidget(
            title: 'عامل',
            imageTitle: 'assets/images/page_view_images/Hero_m.png',
          ),
        ],
      ),
    );
  }
}
