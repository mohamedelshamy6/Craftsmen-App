import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sw_project/ui/widgets/requests/tab_body.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TabBar(
              labelColor: const Color(0xff2699FB),
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: 'الكل'),
                Tab(text: 'مكتملة'),
                Tab(text: 'تم قبولها'),
                Tab(text: 'تم رفضها'),
                Tab(text: 'قيد الانتظار'),
              ],
              isScrollable: true,
              padding: EdgeInsets.zero,
              labelStyle: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 600.h,
              child: TabBarView(
                children: <Widget>[
                  SizedBox(
                    height: 600.h,
                    child: const TabBody(),
                  ),
                  Center(
                    child: Text(
                      'Display Tab 2',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Display Tab 3',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Display Tab 4',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Display Tab 5',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
