import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:clinic_app/screens%20/home_screens/screens/doctors_screen/doctors_screen.dart';
import 'package:clinic_app/screens%20/home_screens/screens/profile_screen/profile_screen.dart';
import 'package:clinic_app/screens/home_screens/screens/doctors_screen/doctors_screen.dart';
import 'package:clinic_app/screens/home_screens/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../testFile/testFile.dart';
import '../article_screen/article_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

// @override
// void initState() {
//   super.initState;
//   initPrefs();
// }

// late SharedPreferences prefs;
// void initPrefs() async {
//   prefs = await SharedPreferences.getInstance();
// }

List<Widget> screens = [
  DoctorsScreen(),
  ArticleScreens(),
  Text('index 2'),
  Tabbartest(),
  // ProfileScreen(
  //     // prefs: prefs,
  //     ),
];

int _selctedIndex = 0;
Color _selectedColor = AppColors.blue;
Color _unSelectedColor = AppColors.lightGrey;
bool isSelect = false;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 64,
        width: 64,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImgaes.car),
              Text(
                'Вызов',
                style: AppFonts.w500s10.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: screens[_selctedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: _selctedIndex,
        unselectedItemColor: AppColors.lightGrey,
        selectedItemColor: AppColors.blue,
        showUnselectedLabels: true,
        selectedLabelStyle: AppFonts.w500s10.copyWith(color: AppColors.blue),
        unselectedLabelStyle:
            AppFonts.w500s10.copyWith(color: AppColors.lightGrey),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImgaes.plusUser,
                width: 28,
                height: 28,
                color: _selectedColor,
              ),
              label: 'Доктора'),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImgaes.abstact,
                width: 28,
                height: 28,
                color: _unSelectedColor,
              ),
              label: 'Статьи'),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImgaes.favorite,
                width: 28,
                height: 28,
                color: _unSelectedColor,
              ),
              label: 'Мои доктора'),
              
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImgaes.user,
                width: 28,
                height: 28,
                color: _unSelectedColor,
              ),
              label: 'Профиль'),
        ],
      ),
    );
  }

  void changeIndex(int index) {
    if (_selctedIndex != index) {
      _selctedIndex = index;

      setState(() {});
    }
  }
}
