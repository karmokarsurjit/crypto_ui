import 'package:crypto_ui/modules/home/home_logic.dart';
import 'package:crypto_ui/modules/home/home_pages/sub_pages/trading_page.dart';
import 'package:crypto_ui/modules/home/home_pages/sub_pages/wallet_page.dart';
import 'package:crypto_ui/modules/home/home_pages/sub_pages/welcome_page.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
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
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            WelcomePage.welcomePage(context: context),
            TradingPage.tradingPage(),
            WalletPage.walletPage(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ConstColors.BACKGROUND,
          unselectedItemColor: ConstColors.WHITE,
          selectedItemColor: ConstColors.BLUE,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: '',),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(Images.navigationIcon2), label: '',activeIcon: SvgPicture.asset(Images.navigationIcon2,color: ConstColors.BLUE), ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ''),
          ],
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            if(index == 3){
              Get.toNamed(AppRoutes.PROFILE);
            }
            else {
              controller.changePage(index);
            }
          },
        );
      }),
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
