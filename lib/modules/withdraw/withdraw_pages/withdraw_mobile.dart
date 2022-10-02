import 'package:crypto_ui/modules/withdraw/withdraw_logic.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WithdrawPageMobilePortrait extends GetView<WithdrawLogic> {
  final SizingInformation? sizingInformation;

  const WithdrawPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WithdrawLogic>();
    return Scaffold(
        backgroundColor: ConstColors.BACKGROUND,
        appBar: Views.defAppBarView(texts: "Withdraw",
            icon: const Icon(Icons.notifications_outlined),
            onPressedIcon: () {
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
            }),
        body: Texts.texts(texts: "Withdraw",textSize: FontSizes.EXTRALARGE),
    );
  }
}

class WithdrawPageMobileLandscape extends GetView<WithdrawLogic> {
  final SizingInformation? sizingInformation;

  const WithdrawPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WithdrawLogic>();
    return Container();
  }
}