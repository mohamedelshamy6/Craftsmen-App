import 'package:flutter/material.dart';

class CustomPageViewContent extends StatelessWidget {
  const CustomPageViewContent({
    super.key,
    required this.title,
    required this.imageTitle,
  });

  final String title, imageTitle;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(
        right: mq.viewInsets.right + 20,
        left: mq.viewInsets.left + 20,
        top: mq.viewInsets.top + 200,
        bottom: mq.viewInsets.bottom + 100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageTitle,
            height: mq.size.height / 2.5,
            width: double.infinity,
          ),
          SizedBox(height: mq.size.height * 0.03),
          SizedBox(
            width: mq.size.width * 0.85,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                color: const Color(0xff2699FB),
                fontSize: mq.textScaleFactor + 28,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
