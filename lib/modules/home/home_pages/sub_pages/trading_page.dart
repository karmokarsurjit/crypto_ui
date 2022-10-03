import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TradingPage {
  static tradingPage() {
    return Column(
      children: [
        Views.appBarView(
          titleTexts: "Trading",
          icon: const Icon(Icons.notifications_outlined,
              color: ConstColors.WHITE),
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
          },
        ),
        Text(
          '\$50,400.80',
          style: Texts.textStyles(
            colors: ConstColors.TEXTWHITE,
            textSize: FontSizes.EXTRALARGE,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$50,400.80',
              style: Texts.textStyles(
                colors: ConstColors.TEXTWHITE,
                textSize: FontSizes.REGULAR,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '+9%',
              style: Texts.textStyles(
                colors: ConstColors.TEXTWHITE,
                textSize: FontSizes.REGULAR,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: ConstColors.BTC_BACK_COLOR,
                ),
                child: Image.asset(
                  Images.btcLogo,
                ),
              ),
              Text(
                '  Bitcoin',
                style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.MEDIUM,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                width: 150.0,
              ),
              Text(
                'USDT  ',
                style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.REGULAR,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '7.860',
                style: Texts.textStyles(
                  colors: ConstColors.TEXTWHITE,
                  textSize: FontSizes.MEDIUM,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          Images.tradingChart1,
          width: double.infinity,
          height: 250.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Buttons.buttons(
                height: 50.0,
                width: 50.0,
                circularValue: 10.0,
                colorValue: ConstColors.GREY,
                text: '1H',
                borderColor: ConstColors.BACKGROUND,
                onPressed: () {}),
            Buttons.buttons(
                height: 50.0,
                width: 50.0,
                circularValue: 10.0,
                colorValue: ConstColors.GREY,
                text: '1D',
                borderColor: ConstColors.BACKGROUND,
                onPressed: () {}),
            Buttons.buttons(
                height: 50.0,
                width: 50.0,
                circularValue: 10.0,
                colorValue: ConstColors.GREY,
                text: '1W',
                borderColor: ConstColors.BACKGROUND,
                onPressed: () {}),
            Buttons.buttons(
                height: 50.0,
                width: 50.0,
                circularValue: 10.0,
                colorValue: ConstColors.GREY,
                text: '1M',
                borderColor: ConstColors.BACKGROUND,
                onPressed: () {}),
            Buttons.buttons(
                height: 50.0,
                width: 50.0,
                circularValue: 10.0,
                colorValue: ConstColors.GREY,
                text: '1Y',
                borderColor: ConstColors.BACKGROUND,
                onPressed: () {}),
            Buttons.buttons(
                height: 50.0,
                width: 50.0,
                circularValue: 10.0,
                colorValue: ConstColors.GREY,
                text: 'All',
                borderColor: ConstColors.BACKGROUND,
                onPressed: () {}),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Buttons.buttons(
                  width: 100.0,
                  height: 50.0,
                  text: 'Buy',
                  colorValue: ConstColors.BLUE,
                  circularValue: 10.0,
                  borderColor: ConstColors.BLUE,
                  onPressed: () {}),
              Buttons.buttons(
                width: 100.0,
                height: 50.0,
                text: 'Sell',
                colorValue: ConstColors.BACKGROUND,
                circularValue: 10.0,
                borderColor: ConstColors.BLUE,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
