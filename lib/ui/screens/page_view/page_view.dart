import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            padding: EdgeInsets.only(
              right: 25.0.h,
              left: 25.0.h,
              bottom: 60.0.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    if (controller.page == 2) {
                      Navigator.pushNamed(context, 'userSignUp');
                    }
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 750),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                      fontSize: 15.sp,
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
                    dotHeight: 8.r,
                    dotWidth: 8.r,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (controller.page == 2) {
                      Navigator.pushNamed(context, 'userSignUp');
                    }
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: 15.sp,
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
