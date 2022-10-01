import 'package:crypto_ui/modules/introduction/introduction_logic.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroPageMobilePortrait extends GetView<IntroductionLogic> {
  final SizingInformation? sizingInformation;

  const IntroPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();
    return IntroductionScreen(
      key: controller.introKey,
      globalBackgroundColor: ConstColors.BACKGROUND,

      globalFooter: Buttons.regularButton(
          texts: "Start Now",
          l: 20.0,
          r: 20.0,
          b: 60.0,
          onPressed: (){
        Get.toNamed(AppRoutes.SIGNIN);}
      ),
      pages: [

        Views.pageView(image: Images.introImage1,texts: "We make crypto clear \n and simple" ),

        Views.pageView(image: Images.introImage2,texts: "Take your first step into safe, \n secure crypto investing" ),

        Views.pageView(image: Images.introImage3,texts: "24/7 access to full service \n customer support"),
      ],

      showDoneButton: false,
      showNextButton: false,
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: ConstColors.GREY,
        activeColor: ConstColors.WHITE,
        activeSize: Size(10.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class IntroPageMobileLandscape extends GetView<IntroductionLogic> {
  final SizingInformation? sizingInformation;

  const IntroPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();
    return Container();
  }
}
