import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletPage {
  static walletPage() {
    return Column(
        children: [
      Views.appBarView(titleTexts: "Wallet ",icon: const Icon(Icons.notifications_outlined,color: ConstColors.WHITE),),
      Container(
        padding: const EdgeInsets.all(18),
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              colors: [Color(0xff828080), Color(0xff1F1D1D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(Images.card_contactless),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              Images.card_chip,
              width: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '1234    5678    90000   0000',
              style: Texts.textStyles(
                colors: ConstColors.TEXTWHITE,
                fontWeight: FontWeight.w300,
                textSize: FontSizes.MEDIUM,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Joy Laroy',
                  style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    fontWeight: FontWeight.w300,
                    textSize: FontSizes.SMALL,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  '12/24',
                  style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    fontWeight: FontWeight.w300,
                    textSize: FontSizes.SMALL,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                Images.card_mastercard,
                width: 60,
              ),
            ),
          ],
        ),
      ),
      Texts.texts(texts: "Wallet Page",textSize: FontSizes.EXTRALARGE,align: TextAlign.center),
    ]);
  }
}
