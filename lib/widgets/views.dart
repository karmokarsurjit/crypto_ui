import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Views {
  static pageView({image, texts}) {
    return PageViewModel(
      image: Image.asset(image),
      title: '',
      bodyWidget: Texts.texts(texts: texts),
    );
  }

  static defAppBarView(
      {texts, center = true, bottomTexts = '', icon, onPressedIcon}) {
    return AppBar(
      title: Texts.texts(
          texts: texts,
          fontWeight: FontWeight.w400,
          textSize: FontSizes.BIG,
          t: 10.0),
      bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Texts.texts(
                texts: bottomTexts,
                colors: ConstColors.TEXTGREY,
                fontWeight: FontWeight.w400,
                textSize: FontSizes.SMALL,
                l: 14.0),
          )),
      backgroundColor: ConstColors.BACKGROUND,
      centerTitle: center,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
          child: IconButton(
            icon: icon,
            onPressed: () => onPressedIcon(),
          ),
        ),
      ],
    );
  }

  static appBarView({titleTexts, bottomTexts = '', icon, onPressedIcon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts.texts(
                    texts: titleTexts,
                    fontWeight: FontWeight.w500,
                    textSize: FontSizes.BIG),
                Texts.texts(
                    texts: bottomTexts,
                    colors: ConstColors.TEXTGREY,
                    fontWeight: FontWeight.w400,
                    textSize: FontSizes.SMALL),
              ],
            ),
            IconButton(
              icon: icon,
              onPressed: () => onPressedIcon(),
            ),
          ],
        ),
      ),
    );
  }

  static appBarViewBack({texts, onPressedBack, onPressedIcon, icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: ConstColors.WHITE,
              ),
              onPressed: () => onPressedBack(),
            ),
            Texts.texts(
              texts: texts,
              fontWeight: FontWeight.w500,
              textSize: FontSizes.BIG,
            ),
            IconButton(
              icon: icon,
              onPressed: () => onPressedIcon(),
            ),
            // SvgPicture.asset(Images.scanner_icon),
          ],
        ),
      ),
    );
  }

  static cardView() {
    return MaterialButton(
      onPressed: () {
        Get.toNamed(AppRoutes.CARDDETAILS);
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 86, 86, 86),
              Color.fromARGB(125, 85, 85, 85),
              Color.fromARGB(140, 31, 29, 29),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                Images.cardContactless,
              ),
            ),
            Image.asset(
              Images.cardChip,
              alignment: Alignment.topLeft,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                '1234    5678    9000    0000',
                textAlign: TextAlign.center,
                style: GoogleFonts.jura(
                  textStyle: const TextStyle(
                      color: ConstColors.TEXTWHITE,
                      fontSize: FontSizes.MEDIUM,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.5),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                Images.cardMastercard,
              ),
            ),
            Row(
              children: [
                Texts.texts(
                  texts: 'Joy Leroy',
                  textSize: FontSizes.SMALL,
                ),
                Texts.texts(texts: '12/24', textSize: FontSizes.SMALL, l: 30.0),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static listCardView(
      {leftTitleText,
      leftSubText,
      logoImage,
      rightTitleText,
      rightSubText,
      chartImage,
      logoBackColor}) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: logoBackColor,
              ),
              child: SizedBox(
                width: 10.0,
                height: 10.0,
                child: Image.asset(logoImage),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(leftTitleText,
                  style: Texts.textStyles(
                    textSize: FontSizes.MEDIUM,
                    fontWeight: FontWeight.w500,
                    colors: ConstColors.TEXTWHITE,
                  )),
              Text(leftSubText,
                  style: Texts.textStyles(
                    textSize: FontSizes.REGULAR,
                    fontWeight: FontWeight.w300,
                    colors: ConstColors.GREY,
                  )),
            ],
          ),
          Image.asset(
            chartImage,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(rightTitleText,
                  style: Texts.textStyles(
                    textSize: FontSizes.MEDIUM,
                    fontWeight: FontWeight.w500,
                    colors: ConstColors.TEXTWHITE,
                  )),
              Text(rightSubText,
                  style: Texts.textStyles(
                    textSize: FontSizes.REGULAR,
                    fontWeight: FontWeight.w300,
                    colors: ConstColors.GREY,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  static smallCardView(
      {cardTitleName, subTitleName, cryptoImage, currentBalance, ratioLevel,icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: 180.0,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 57, 57, 57),
            Color.fromARGB(125, 85, 85, 85),
            Color.fromARGB(140, 45, 45, 45),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts.texts(
                        texts: cardTitleName, fontWeight: FontWeight.w600),
                    Image.asset(
                      cryptoImage,
                      width: 20.0,
                    ),
                  ],
                ),
              ),
              Text(
                subTitleName,
                style: Texts.textStyles(
                    colors: ConstColors.GREY,
                    fontWeight: FontWeight.w200,
                    textSize: FontSizes.SMALL),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      currentBalance,
                      style: Texts.textStyles(
                          colors: ConstColors.TEXTWHITE,
                          fontWeight: FontWeight.w500,
                          textSize: FontSizes.BIG),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      ratioLevel,
                      style: Texts.textStyles(
                          colors: ConstColors.TEXTWHITE,
                          fontWeight: FontWeight.w300,
                          textSize: FontSizes.SMALL),
                    ),
                    Icon(icon, color: ConstColors.WHITE,size: 15),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static cardDetailsSmallView({currency, value, icon,width}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        width: width,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 57, 57, 57),
            Color.fromARGB(125, 85, 85, 85),
            Color.fromARGB(140, 45, 45, 45),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Texts.texts(
                texts: currency,
                fontWeight: FontWeight.w500,
                textSize: FontSizes.REGULAR),
            Texts.texts(
                texts: value,
                fontWeight: FontWeight.w500,
                textSize: FontSizes.REGULAR),
            Icon(icon, color: ConstColors.WHITE),
          ],
        ),
      ),
    );
  }

  static cardDetailsListView(
      {leftTitleText,
      leftSubText,
      rightTitleText,
      logoBackColor = const Color.fromARGB(30, 255, 236, 234)}) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: logoBackColor,
              ),
              child: const SizedBox(
                width: 10.0,
                height: 10.0,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(leftTitleText,
                    style: Texts.textStyles(
                      textSize: FontSizes.MEDIUM,
                      fontWeight: FontWeight.w500,
                      colors: ConstColors.TEXTWHITE,
                    )),
                Text(leftSubText,
                    style: Texts.textStyles(
                      textSize: FontSizes.SMALL,
                      fontWeight: FontWeight.w300,
                      colors: ConstColors.GREY,
                    )),
              ],
            ),
          ),
          Expanded(
            child: Texts.texts(texts: rightTitleText, align: TextAlign.right),
          ),
        ],
      ),
    );
  }
}
