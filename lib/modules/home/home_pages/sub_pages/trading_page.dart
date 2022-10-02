import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TradingPage {
  static tradingPage() {
    return Column(children: [
      Views.appBarView(
        titleTexts: "Trading",
        icon:
            const Icon(Icons.notifications_outlined, color: ConstColors.WHITE),
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
    ]);
  }
}
