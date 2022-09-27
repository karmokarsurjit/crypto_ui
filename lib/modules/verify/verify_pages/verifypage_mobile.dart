import 'package:crypto_ui/modules/verify/verify_logic.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VerifyPageMobilePortrait extends GetView<VerifyLogic> {
  final SizingInformation? sizingInformation;

  const VerifyPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<VerifyLogic>();
    return Scaffold(
        backgroundColor: ConstColors.BACKGROUND,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Texts.texts(texts: "Verify your email",textSize: FontSizes.LARGE,align: TextAlign.center,b: 10.0),
            Texts.texts(texts: "Go to mail and click the button to \n verify your account",textSize: FontSizes.MEDIUM,align: TextAlign.center),
          ],
        ),
    );
  }
}
class VerifyPageMobileLandscape extends GetView<VerifyLogic> {
  final SizingInformation? sizingInformation;

  const VerifyPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<VerifyLogic>();
    return Container();
  }
}