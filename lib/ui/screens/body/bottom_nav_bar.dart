import 'package:flutter/material.dart';
import '../Home/home_page.dart';
import '../favorites/favorites.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List pages = [
    const HomePage(),
    const Favorites(),
    const Scaffold(),
    const Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
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
                        height: 40,
                        width: 40,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/home.png',
                        height: 40,
                        width: 40,
                      ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 1
                    ? Image.asset(
                        'assets/icon_images/blue_icons/heart_b.png',
                        height: 40,
                        width: 40,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/heart.png',
                        height: 40,
                        width: 40,
                      ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 2
                    ? Image.asset(
                        'assets/icon_images/blue_icons/chatbubbles_b.png',
                        height: 40,
                        width: 40,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/chatbubbles.png',
                        height: 40,
                        width: 40,
                      ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: currentIndex == 3
                    ? Image.asset(
                        'assets/icon_images/blue_icons/user_alt_b.png',
                        height: 40,
                        width: 40,
                      )
                    : Image.asset(
                        'assets/icon_images/default_icons/user_alt.png',
                        height: 40,
                        width: 40,
                      ),
              ),
            ],
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
