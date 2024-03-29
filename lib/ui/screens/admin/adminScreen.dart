import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sw_project/models/workers/worker_model.dart';
import 'package:sw_project/ui/screens/login_signup/worker_login_page.dart';
import 'package:sw_project/ui/widgets/admin/Admin.dart';
import 'package:sw_project/ui/widgets/profile.dart';
import 'package:sw_project/view_models/workers/worker_logout_view_model.dart';

import '../../../repositories/workers/worker_login.dart';
import '../../../view_models/workers/worker_login_view_model.dart';
import '../../../view_models/workers/worker_view_model.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  Future<WorkerModel> test(ctx) async {
    final workerViewModel = Provider.of<WorkerViewModel>(ctx);
    var worker = await workerViewModel.sWorker ?? [];
    var index = worker[0];
    return index;
  }

  @override
  Widget build(BuildContext context) {
    var workerLogoutViewModel = Provider.of<WorkerLogoutViewModel>(context);

    return FutureBuilder(
      future: test(context),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'workerProfileEdit');
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Color(0xff33A1FD),
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  var token = await getTokenFromPrefs();
                  workerLogoutViewModel.logout(token!).then(
                        (value) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ChangeNotifierProvider<WorkerLoginViewModel>(
                              create: (_) => WorkerLoginViewModel(
                                workerLoginRepository: WorkerLoginRepository(),
                              ),
                              child: const WorkerLoginScreen(),
                            ),
                          ),
                        ),
                      );

                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.clear();
                },
                icon: const Icon(
                  Icons.logout,
                  color: Color(0xff33A1FD),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundImage:
                      const AssetImage('assets/images/profile.png'),
                ),
              ),
              Text(
                snapshot.data?.name ?? '',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                    color: const Color(0xff2699FB)),
              ),
              Text(
                snapshot.data?.jobName ?? '',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Cairo',
                    color: const Color(0xff2699FB)),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                height: 43.h,
                child: Text(
                  snapshot.data?.address ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Cairo',
                      color: const Color(0xff2699FB)),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 316.w,
                height: 42.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Dv1(txtnum: '18', txt: 'JOP REQUEST'),
                    DV2(),
                    Dv1(txtnum: '18', txt: 'JOP REQUEST'),
                    DV2(),
                    Dv1(txtnum: '18', txt: 'JOP REQUEST'),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Stack(
                children: [
                  Container(
                    width: 380.w,
                    height: 184.h,
                    color: const Color(0xffF1F9FF),
                    child: const VarProfile(
                        textOne: 'الطلبات', textTwo: 'اخرين16+'),
                  ),
                  Positioned(top: 70.h, right: 20.w, child: const UserP()),
                  Positioned(left: 20.w, top: 70.h, child: const UserP()),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Stack(
                children: [
                  Container(
                    width: 380.w,
                    height: 184.h,
                    color: const Color(0xffF1F9FF),
                    child: const VarProfile(
                      textOne: 'الاعمال المنجزه ',
                      textTwo: 'اخرين138+',
                    ),
                  ),
                  Positioned(top: 70.h, right: 20.w, child: const UserP()),
                  Positioned(left: 20.w, top: 70.h, child: const UserP()),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
