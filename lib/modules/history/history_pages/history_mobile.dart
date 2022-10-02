import 'package:crypto_ui/modules/history/history_logic.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
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
      appBar: Views.defAppBarView(texts: "My Profile",icon: const Icon(Icons.notifications_outlined),),
      body: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.account_circle,size:120,color: Color.fromARGB(120, 111, 111, 111)),
            ],
          ),
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