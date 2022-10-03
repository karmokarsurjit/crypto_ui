import 'package:crypto_ui/modules/withdraw/withdraw_logic.dart';
import 'package:crypto_ui/shared/assets/images.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Views.cardView(),
            Texts.texts( texts: "Send Fund",t: 10.0,b: 10.0,l: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 57, 57, 57),
                    Color.fromARGB(125, 85, 85, 85),
                    Color.fromARGB(140, 45, 45, 45),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ConstColors.BTC_BACK_COLOR,
                        ),
                        child: SizedBox(
                          width: 10.0,
                          height: 10.0,
                          child: Image.asset(Images.btcLogo,fit: BoxFit.scaleDown),
                        )),
                    Texts.texts(
                        texts: "Bitcoin",
                        fontWeight: FontWeight.w500,
                        textSize: FontSizes.MEDIUM),
                    //Views.cardDetailsSmallView(currency: "Available Balance  ",value: " -\$ 100", icon: null),
                  ],
                ),
              ),
            ),

          ],
        ),
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