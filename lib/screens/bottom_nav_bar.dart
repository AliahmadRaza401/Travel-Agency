import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/screens/bottom_nav_controller.dart';
import 'package:travel_agency/utils/colors.dart';
import 'package:travel_agency/utils/dynamic_sizes.dart';

class BottomNavBar extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: navigationController.selectedIndex.value,
          onTap: navigationController.changePage,
          type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: KColors.kWhite,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/icon1.png",
                  height: kHeight(.04),
                  color: navigationController.selectedIndex.value == 0
                      ? KColors.kPrimary
                      : Colors.grey),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/icon2.png",
                  height: kHeight(.04),
                  color: navigationController.selectedIndex.value == 1
                      ? KColors.kPrimary
                      : Colors.grey),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/icon3.png",
                  height: kHeight(.04),
                  color: navigationController.selectedIndex.value == 2
                      ? KColors.kPrimary
                      : Colors.grey),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/icon4.png",
                  height: kHeight(.04),
                  color: navigationController.selectedIndex.value == 3
                      ? KColors.kPrimary
                      : Colors.grey),
              label: '',
            ),
          ],
        ));
  }
}
