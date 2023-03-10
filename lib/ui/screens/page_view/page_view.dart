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
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              bottom: 100,
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
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff33A1FD),
                    dotColor: Color(0xffBCE0FD),
                    dotHeight: 15,
                    dotWidth: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 22,
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
