import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/home_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/new_post_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/searching_screen/searching_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class MainBottomNavBar extends StatelessWidget {
  MainBottomNavBar({Key? key}) : super(key: key);

  final RxInt _currentIndex = 0.obs;

  void changePage(int index) {
    _currentIndex.value = index;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(() => BottomNavyBar(
        selectedIndex: _currentIndex.value,

        containerHeight: 70,
        iconSize:24 ,

        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.slowMiddle,
        onItemSelected: changePage,
        backgroundColor: Colors.white,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Image.asset("assets/png_icons/home.png"),
            title: Text('Home'),
            activeColor: Colors.black,

            inactiveColor:Colors.black,
            textAlign: TextAlign.center,
          ),

          BottomNavyBarItem(

            icon: Image.asset("assets/png_icons/search.png"),
            title: Text('Search'),
            activeColor: Colors.black,

            inactiveColor:Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Image.asset("assets/png_icons/add.png"),
            title: Text('New Post'),
            activeColor: Colors.black,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,

          ),



          BottomNavyBarItem(
            icon: Image.asset("assets/png_icons/profile.png"),
            title: Text('Profile'),
            activeColor: Colors.black,

            inactiveColor:Colors.black,
            textAlign: TextAlign.center,
          ),
        ],
      )),
      body: Obx(() {
        switch (_currentIndex.value) {
          case 0:
            return const HomeScreen();
          case 1:
            return SearchingScreen(key: GlobalKey());
          case 2:
            return  NewPostScreen();
          case 3:
            return const ProfileScreen();
          default:
            return const HomeScreen();
        }
      }),
    );
  }
}
