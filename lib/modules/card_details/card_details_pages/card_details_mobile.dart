

import 'package:crypto_ui/modules/card_details/card_details_logic.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardDetailsPageMobilePortrait extends GetView<CardDetailsLogic> {
  final SizingInformation? sizingInformation;

  const CardDetailsPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CardDetailsLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(texts: "Card Details",icon: const Icon(Icons.add),),
      body: Column(
        children: [
          Views.cardView(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Views.cardDetailsSmallView(currency: "USD ", value: " 78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "EUR ", value: " 78,90",icon: Icons.arrow_downward),
                Views.cardDetailsSmallView(currency: "GBP ", value: " 78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "USD ", value: " 78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "EUR ", value: " 78,90",icon: Icons.arrow_downward),
                Views.cardDetailsSmallView(currency: "GBP ", value: " 78,90",icon: Icons.arrow_upward),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Texts.texts(
                  texts: "Cash Back",
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
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$90",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$70",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$50",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$90",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$70",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$50",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$90",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$70",),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(leftTitleText: "Shopping",leftSubText: "2.36 pm",rightTitleText: "-\$50",),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class CardDetailsPageMobileLandscape extends GetView<CardDetailsLogic> {
  final SizingInformation? sizingInformation;

  const CardDetailsPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CardDetailsLogic>();
    return Container();
  }
}