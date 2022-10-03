import 'package:crypto_ui/modules/history/history_logic.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HistoryPageMobilePortrait extends GetView<HistoryLogic> {
  final SizingInformation? sizingInformation;

  const HistoryPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(
        texts: "History",
        icon: const Icon(null),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Buttons.buttons(
              width: 50.0,
              text: 'April-May',
              height: 30.0,
              circularValue: 8.0,
              value: 5.0,
              borderColor: ConstColors.TEXTWHITE,
              colorValue: ConstColors.BACKGROUND,
              onPressed: () {
                controller.showDatePicker(context: context);
              }),
          SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Views.cardDetailsSmallView(currency: "Transaction  ", value: " +\$ 10000.00"),
                Views.cardDetailsSmallView(currency: "Tickets  ", value: " -\$ 130.00"),
                Views.cardDetailsSmallView(currency: "GBP  ", value: " 78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "USD  ", value: " 78,90",icon: Icons.arrow_upward),
                Views.cardDetailsSmallView(currency: "EUR  ", value: " 78,90",icon: Icons.arrow_downward),
                Views.cardDetailsSmallView(currency: "GBP  ", value: " 78,90",icon: Icons.arrow_upward),
              ],
            ),
          ),
          Text(
            'Today',
            style: Texts.textStyles(
              colors: ConstColors.TEXTWHITE,
              fontWeight: FontWeight.w400,
              textSize: FontSizes.BIG,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$90",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$70",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$50",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$90",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$70",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$50",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$90",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$70",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Divider(
                      thickness: .5,
                      color: ConstColors.GREY,
                    ),
                  ),
                  Views.cardDetailsListView(
                    leftTitleText: "Shopping",
                    leftSubText: "2.36 pm",
                    rightTitleText: "-\$50",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HistoryPageMobileLandscape extends GetView<HistoryLogic> {
  final SizingInformation? sizingInformation;

  const HistoryPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();
    return Container();
  }
}
