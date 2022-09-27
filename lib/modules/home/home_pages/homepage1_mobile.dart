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

  const HomePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(
        texts: "Hello Vlad",
        bottomTexts: " Welcome Back",
        //actions: [],
      ),
      body: ListView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ConstColors.BACKGROUND,
          unselectedItemColor: ConstColors.WHITE,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(Images.navigation_icon2),label:''),
        ],
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
