import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/models/favourites/favourites_model.dart';
import 'package:sw_project/repositories/workers/worker_login.dart';
import 'package:sw_project/view_models/favourites/get_favourites_view_model.dart';
import 'package:sw_project/view_models/favourites/remove_favourite.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  Future<List<FavouritesModel>?> fetchFavouriteData(ctx) async {
    var favouriteModel = Provider.of<FavouriteViewModel>(ctx);
    var favourite = await favouriteModel.favourite;
    return favourite;
  }

  @override
  Widget build(BuildContext context) {
    var favouriteModel = Provider.of<RemoveFavouriteViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: const Color(0xff2699FB),
          size: 24.r,
        ),
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          'العمال الافضل لك',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 24.sp,
            color: const Color(0xff33A1FD),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: FutureBuilder(
              future: fetchFavouriteData(context),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (BuildContext context, int index) {
                      var data = snapshot.data;
                      var dataItem = data![index];

                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffBCE0FD),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.r),
                          ),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Container(
                                  height: 100.h,
                                  width: double.infinity,
                                  color: const Color(0xffF1F9FF),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.r),
                                      topRight: Radius.circular(4.r),
                                    ),
                                    child: Image.asset(
                                      "assets/images/profile.png",
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    var token = await getTokenFromPrefs();
                                    await favouriteModel.removeFavourite(
                                        token!, dataItem.id!);
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 22.r,
                                    color: const Color(0xffFF1616),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 80.h,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    width: 1,
                                    color: Color(0xffBCE0FD),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.h, horizontal: 15.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        dataItem.workerInformation!['name'],
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff33A1FD),
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Expanded(
                                      child: Text(
                                        dataItem.workerInformation!['jobName'],
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff33A1FD),
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: List.generate(
                                          5,
                                          (index) => Icon(
                                            Icons.star,
                                            size: 20.r,
                                            color: const Color(0xffFFB703),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ),
    );
  }
}
