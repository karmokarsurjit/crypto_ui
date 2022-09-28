import 'package:crypto_ui/modules/home/home_logic.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageMobilePortrait extends GetView<HomeLogic> {
  final SizingInformation? sizingInformation;

  const HomePageMobilePortrait({Key? key, this.sizingInformation, onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(
        texts: "Hello Vlad",
        bottomTexts: " Welcome Back",
        actions: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.notifications_outlined,
                  color: ConstColors.WHITE,
                )),
          ),
        ],
      ),
      body: [
        const Text(
          'Index 0: Home', style: TextStyle(color: Colors.cyan),
        ),
        const Text(
          'Index 1: Business', style: TextStyle(color: Colors.cyan),
        ),
        const Text(
          'Index 2: School', style: TextStyle(color: Colors.cyan),
        ),
        const Text(
          'Index 3: School', style: TextStyle(color: Colors.cyan),
        ),
      ].elementAt(controller.selectedIndex.toInt()),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ConstColors.BACKGROUND,
          unselectedItemColor: ConstColors.WHITE,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: '',),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(Images.navigation_icon2), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ''),
          ],
          currentIndex: controller.selectedIndex.toInt(),
      ),
    );
  }
}

class HomePageMobileLandscape extends GetView<HomeLogic> {
  final SizingInformation? sizingInformation;

  const HomePageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    return Container();
  }
}
