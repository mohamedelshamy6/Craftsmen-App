import 'package:flutter/material.dart';

class CustomClickedWidget extends StatelessWidget {
  const CustomClickedWidget({
    super.key,
    required this.title,
    required this.imageTitle,
  });

  final String title, imageTitle;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: mq.viewInsets.right + 100,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: mq.textScaleFactor + 24,
                    color: const Color(0xff33A1FD),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: mq.size.height / 3,
                  width: mq.size.width / 2,
                  child: Image.asset(
                    imageTitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
