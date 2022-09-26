import 'package:crypto_ui/modules/introduction/introduction_logic.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/texts.dart';
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

      globalFooter: Buttons.regularButton(texts: "Start Now"),
      pages: [
        PageViewModel(
          title: '',
          body: "We make crypto clear \n and simple",
          image: Image.asset(Images.intro_icon1),
          decoration: PageDecoration(
            bodyTextStyle: Texts.textStyles(),
            bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            imagePadding: EdgeInsets.zero,
          ),
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image.asset('assets/icons/intro_icon1.png', width: 350),
          decoration: PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
            bodyTextStyle: TextStyle(fontSize: 19.0),
            bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            imagePadding: EdgeInsets.zero,
          ),
        ),
        PageViewModel(
          title: "Title of last page - reversed",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on ", style: TextStyle(fontSize: 19.0)),
              Icon(Icons.edit),
              Text(" to edit a post", style: TextStyle(fontSize: 19.0)),
            ],
          ),
          decoration: PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
            bodyTextStyle: TextStyle(fontSize: 19.0),
            bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            pageColor: Colors.white,
            imagePadding: EdgeInsets.zero,
          ).copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: Image.asset('assets/icons/intro_icon1.png', width: 350),
          reverse: true,
        ),
      ],
      onDone: () => Get.toNamed(AppRoutes.SIGNIN),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
