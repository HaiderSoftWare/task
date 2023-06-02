import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/pages/home_screen.dart';
import 'package:task/view/shared/constant/colors.dart';

import '../../controller/bottom_navi_controller.dart';
import 'account_screen.dart';

class BottomNavi extends StatelessWidget {
  BottomNavi({super.key});

  List<Widget> pages = [
    const AccountScreen(),
    const AccountScreen(),
    const AccountScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NavigationController(),
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            selectedLabelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
            unselectedItemColor: SecondKD1,
            selectedItemColor: SecondKD1,
            currentIndex: controller.index,
            onTap: (value) {
              controller.changeIndex(value);
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/1-07.png',
                  width: 54,
                  height: 50,
                ),
                label: 'الامتحانات',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/1-10.png',
                  width: 54,
                  height: 50,
                ),
                label: 'الحساب',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/1-09.png',
                  width: 54,
                  height: 50,
                ),
                label: 'تقييم الطالب ',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/1-08.png',
                  width: 54,
                  height: 50,
                ),
                label: 'الرئيسية',
              ),
            ],
          ),
          body: pages[controller.index],
        );
      },
    );
  }
}
