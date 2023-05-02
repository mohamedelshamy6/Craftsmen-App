import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/repositories/users/user_login.dart';
import 'package:sw_project/view_models/favourites/favourites_view_model.dart';
import 'package:sw_project/view_models/workers/single_worker_view_model.dart';

import '../../../models/favourites/favourites_model.dart';

class Worker extends StatefulWidget {
  const Worker({Key? key}) : super(key: key);

  @override
  State<Worker> createState() => _WorkerState();
}

class _WorkerState extends State<Worker> {
  bool? check;

  @override
  void initState() {
    check = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var addFavourite = Provider.of<AddFavouriteViewModel>(context);
    var singleWorkerViewModel = Provider.of<SingleWorkerViewModel>(context);
    var singleWorker = singleWorkerViewModel.workerViewModel;
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          title: Text(
            singleWorker.name!,
            style: const TextStyle(
                color: Color(0xff2699FB),
                fontFamily: 'Cairo',
                fontSize: 24,
                fontWeight: FontWeight.normal),
          ),
          iconTheme: IconThemeData(
            color: const Color(0xff2699FB),
            size: 24.r,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () async {
                final addFavouritesModel = FavouritesModel(id: singleWorker.id);
                var token = await getTokenFromPrefs();
                check == false
                    ? addFavourite.addFavourite(addFavouritesModel, token!)
                    : () {};
                setState(() {
                  check = true;
                });
              },
              icon: check == false
                  ? const Icon(
                      Icons.favorite_border,
                      color: Color(0xff2699FB),
                    )
                  : const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
            ),
          ],
          backgroundColor: const Color(0xffFFFFFF),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        color: const Color(0xffF1F9FF),
                        width: 380.w,
                        height: 208.h,
                        child: Image.asset(
                            'assets/icon_images/Icon material-photo.png'),
                      ),
                    ),
                    Positioned(
                      top: 140.h,
                      left: 230.w,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                singleWorker.jobName!,
                                style: TextStyle(
                                    color: const Color(0xff2699FB),
                                    fontSize: 14.sp,
                                    fontFamily: 'cairo',
                                    fontWeight: FontWeight.bold),
                                textDirection: TextDirection.rtl,
                              ),
                              Text(
                                singleWorker.address!,
                                style: TextStyle(
                                    color: const Color(0xff2699FB),
                                    fontSize: 10.sp,
                                    fontFamily: 'cairo',
                                    fontWeight: FontWeight.normal),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: const Color(0xffBCE0FD),
                            backgroundImage: const AssetImage(
                              'assets/icon_images/Symbol 6 – 1.png',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'معلومات العامل :',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Cairo',
                                fontSize: 18.sp,
                                color: const Color(0xff33A1FD)),
                          ),
                          Text(
                            'مقر العمل: سنتر ستارز بجوار شركه شاشة امام سلم الحميات ',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Cairo',
                                fontSize: 15.sp,
                                color: const Color(0xff33A1FD)),
                          ),
                          Text(
                            'ايام الاجازه: الجمعه ',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Cairo',
                                fontSize: 15.sp,
                                color: const Color(0xff33A1FD)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 100.w,
                    height: 35.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'ارسال الطلب',
                        style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 16.sp,
                            color: const Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 50.w, bottom: 20.h),
                    alignment: Alignment.topRight,
                    child: Text(
                      'الاعمال المنجزه',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'cairo',
                          color: const Color(0xff2699FB)),
                    )),
                Image.asset('assets/icon_images/Group 111.png'),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset('assets/icon_images/Group 111.png'),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset('assets/icon_images/Group 111.png'),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset('assets/icon_images/Group 111.png'),
              ],
            ),
          ),
        ));
  }
}
