import 'package:crypto_ui/modules/profile/profile_logic.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePageMobilePortrait extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;

  const ProfilePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(
        texts: "My Profile",
        icon: const Icon(Icons.notifications_outlined),
          onPressedIcon: (){
            Get.snackbar(
              'Notification',
              'No new notifications',
              snackPosition: SnackPosition.TOP,
              backgroundColor: ConstColors.TRANSPARENT,
              colorText: ConstColors.GREY,
              margin: const EdgeInsets.all(20.0),
              icon: const Icon(
                Icons.thumb_up,
                color: ConstColors.BLUE,
              ),
              shouldIconPulse: false,
            );
          }
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            child: Row(
              children: [
                const Icon(Icons.account_circle,
                    size: 120, color: Color.fromARGB(120, 111, 111, 111)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vilad Belenko',
                        style: Texts.textStyles(
                            colors: ConstColors.TEXTWHITE,
                            textSize: FontSizes.BIG,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'vlad.belenko.web@gmail.com',
                        style: Texts.textStyles(
                            colors: ConstColors.GREY,
                            textSize: FontSizes.MEDIUM,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Buttons.iconTextButton(
            icon: Images.walletIcon,
            texts: 'My Wallet',
            onPressed: () {
              Get.toNamed(AppRoutes.HOMEPAGE);
            },
          ),
          Buttons.iconTextButton(
            icon: Images.portfolioIcon,
            texts: 'Portfolio',
          ),
          Buttons.iconTextButton(
            icon: Images.statisticIcon,
            texts: 'Statics',
            onPressed: () {
              Get.toNamed(AppRoutes.CARDDETAILS);
            },
          ),
          Buttons.iconTextButton(
            icon: Images.transferIcon,
            texts: 'Transfer',
            onPressed: () {
              Get.toNamed(AppRoutes.TRANSFER);
            },
          ),
          Buttons.iconTextButton(
            icon: Images.withDrawIcon,
            texts: 'Withdraw',
            onPressed: () {
              Get.toNamed(AppRoutes.WITHDRAW);
            },
          ),
          Buttons.iconTextButton(
            icon: Images.settingIcon,
            texts: 'Setting',
          ),
          Buttons.iconTextButton(
            icon: Images.historyIcon,
            texts: 'History',
            onPressed: () {
              Get.toNamed(AppRoutes.HISTORY);
            },
          ),
          Buttons.regularButton(
            texts: "Sign Out",
            btnColor: ConstColors.TRANSPARENT,
            fontWeight: FontWeight.w500,
            l: 20.0,
            r: 20.0,
            textSize: FontSizes.MEDIUM,
            t: 30.0,
            onPressed: (){
              Get.offAllNamed(AppRoutes.SIGNIN);
            }
          ),
        ],
      ),
    );
  }
}

class ProfilePageMobileLandscape extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;

  const ProfilePageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}
