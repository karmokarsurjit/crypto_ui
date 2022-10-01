import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';

class WelcomePage {
  static welcomePage({context}) {
    return Column(
      children: [
        Views.appBarView(
          titleTexts: "Hello Vlad",
          bottomTexts: "Welcome back!",
          icon: const Icon(Icons.notifications_outlined,
              color: ConstColors.WHITE),
        ),
        Views.cardView(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Texts.texts(
                texts: "Live Price",
              ),
              Texts.texts(texts: "See All", textSize: FontSizes.SMALL),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Views.listCardView(
                    logoImage: Images.btcLogo,
                    leftTitleText: 'BTC',
                    leftSubText: '+1,6%',
                    chartImage: Images.btcChart,
                    logoBackColor: ConstColors.BTC_BACK_COLOR,
                    rightTitleText: '\$29,850.15',
                    rightSubText: '2.73 BTC'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.ethLogo,
                    leftTitleText: 'ETC',
                    leftSubText: '-0,82%',
                    chartImage: Images.ethChart,
                    logoBackColor: ConstColors.ETH_BACK_COLOR,
                    rightTitleText: '\$10,850.15',
                    rightSubText: '47.61 ETC'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.ltcLogo,
                    leftTitleText: 'LTC',
                    leftSubText: '-2,10%',
                    chartImage: Images.ltcChart,
                    logoBackColor: ConstColors.LTC_BACK_COLOR,
                    rightTitleText: '\$3,676.76',
                    rightSubText: '39,27 LTC'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.xrpLogo,
                    leftTitleText: 'XRP',
                    leftSubText: '+0,27%',
                    chartImage: Images.xrpChart,
                    logoBackColor: ConstColors.XRP_BACK_COLOR,
                    rightTitleText: '\$5,242.62',
                    rightSubText: '16447,65 XRP'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.btcLogo,
                    leftTitleText: 'BTC',
                    leftSubText: '+1,6%',
                    chartImage: Images.btcChart,
                    logoBackColor: ConstColors.BTC_BACK_COLOR,
                    rightTitleText: '\$29,850.15',
                    rightSubText: '2.73 BTC'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.ethLogo,
                    leftTitleText: 'ETC',
                    leftSubText: '-0,82%',
                    chartImage: Images.ethChart,
                    logoBackColor: ConstColors.ETH_BACK_COLOR,
                    rightTitleText: '\$10,850.15',
                    rightSubText: '47.61 ETC'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.ltcLogo,
                    leftTitleText: 'LTC',
                    leftSubText: '-2,10%',
                    chartImage: Images.ltcChart,
                    logoBackColor: ConstColors.LTC_BACK_COLOR,
                    rightTitleText: '\$3,676.76',
                    rightSubText: '39,27 LTC'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Divider(
                    thickness: 1,
                    color: ConstColors.GREY,
                  ),
                ),
                Views.listCardView(
                    logoImage: Images.xrpLogo,
                    leftTitleText: 'XRP',
                    leftSubText: '+0,27%',
                    chartImage: Images.xrpChart,
                    logoBackColor: ConstColors.XRP_BACK_COLOR,
                    rightTitleText: '\$5,242.62',
                    rightSubText: '16447,65 XRP'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
