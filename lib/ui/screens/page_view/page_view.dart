import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sw_project/ui/screens/page_view/screen_one.dart';
import 'package:sw_project/ui/screens/page_view/screen_three.dart';
import 'package:sw_project/ui/screens/page_view/screen_two.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    var mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffF1F9FF),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                ScreenOne(),
                ScreenTwo(),
                ScreenThree(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mq.viewInsets.right + 50.0,
              left: mq.viewInsets.left + 50.0,
              bottom: mq.viewInsets.bottom + 100.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 750),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                      fontSize: mq.textScaleFactor + 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: const Color(0xff33A1FD),
                    dotColor: const Color(0xffBCE0FD),
                    dotHeight: mq.textScaleFactor + 12,
                    dotWidth: mq.textScaleFactor + 12,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (controller.page == 2) {
                      Navigator.pushNamed(context, 'loginScreen');
                    }
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: mq.textScaleFactor + 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
