import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sw_project/ui/screens/chats/chats.dart';
import 'package:sw_project/view_models/favourites/get_favourites_view_model.dart';
import 'package:sw_project/view_models/favourites/remove_favourite.dart';
import '../../../repositories/favourites/remove_favourite.dart';
import '../../../repositories/users/user_logout.dart';
import '../../../view_models/users/user_logout_view_model.dart';
import '../../../view_models/users/users_view_model.dart';
import '../Home/home_page.dart';
import '../favorites/favorites.dart';
import '../userprofile/user_profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List pages = [
    const HomePage(),
    MultiProvider(
      providers: [
        ChangeNotifierProvider<FavouriteViewModel>(
          create: (context) => FavouriteViewModel()..getAllFavourites(),
        ),
        ChangeNotifierProvider<RemoveFavouriteViewModel>(
          create: (context) => RemoveFavouriteViewModel(
              removeFavouriteRepository: RemoveFavouriteRepository()),
        ),
      ],
      child: const Favorites(),
    ),
    const Chats(),
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UserViewModel>(
          create: (_) => UserViewModel()..getAllUsers(),
        ),
        ChangeNotifierProvider<UserLogoutViewModel>(
          create: (context) => UserLogoutViewModel(
            userLogoutRepository: UserLogoutRepository(),
          ),
        ),
      ],
      child: const UserProfile(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 65.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35.r),
            topLeft: Radius.circular(35.r),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35.r),
            topLeft: Radius.circular(35.r),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.grey[300],
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 0
                    ? Image.asset(
                        'assets/icon_images/blue_icons/home_b.png',
                        height: 25.h,
                        width: 25.w,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/home.png',
                        height: 25.h,
                        width: 25.w,
                      ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 1
                    ? Image.asset(
                        'assets/icon_images/blue_icons/heart_b.png',
                        height: 25.h,
                        width: 25.w,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/heart.png',
                        height: 25.h,
                        width: 25.w,
                      ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 2
                    ? Image.asset(
                        'assets/icon_images/blue_icons/chatbubbles_b.png',
                        height: 25.h,
                        width: 25.w,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/chatbubbles.png',
                        height: 25.h,
                        width: 25.w,
                      ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 3
                    ? Image.asset(
                        'assets/icon_images/blue_icons/user_alt_b.png',
                        height: 25.h,
                        width: 25.w,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/user_alt.png',
                        height: 25.h,
                        width: 25.w,
                      ),
              ),
            ],
            onTap: (value) {
              setState(
                () {
                  currentIndex = value;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
