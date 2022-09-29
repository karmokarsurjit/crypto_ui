import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Views{

  static pageView({image,texts}) {
    return PageViewModel(
      image: Image.asset(image),
      title: '',
      bodyWidget: Texts.texts(texts: texts),
    );
  }

  static defAppBarView({texts, actions, center, bottomTexts=''}){
    return AppBar(
      title: Texts.texts(texts: texts,fontWeight: FontWeight.w400,textSize: FontSizes.BIG,t: 10.0),
      bottom: PreferredSize(preferredSize: Size.zero, child: Align(
        alignment: Alignment.centerLeft,
        child: Texts.texts(texts: bottomTexts,colors: ConstColors.TEXTGREY,fontWeight: FontWeight.w400,textSize: FontSizes.SMALL, l: 14.0),
      )),
      backgroundColor: ConstColors.BACKGROUND,
      centerTitle: center,
      elevation: 0,
      actions: actions,
    );
  }
  static appBarViewBack({texts,onPressedBack,onPressedIcon,icon}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back,color: ConstColors.WHITE,),
              onPressed: () => onPressedBack(),
            ),
            Texts.texts(texts: texts,fontWeight: FontWeight.w500,textSize: FontSizes.BIG,),
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
  static appBarView({titleTexts,bottomTexts='',icon,onPressedIcon}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.texts(texts: titleTexts,fontWeight: FontWeight.w500,textSize: FontSizes.BIG),
                  Texts.texts(texts: bottomTexts,colors: ConstColors.TEXTGREY,fontWeight: FontWeight.w400,textSize: FontSizes.SMALL),
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
}