import 'package:crypto_ui/modules/profile/profile_logic.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePageMobilePortrait extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;

  const ProfilePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(texts: "My Profile",icon: Icon(Icons.notifications_outlined),),
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.account_circle,size:120,color: Color.fromARGB(120, 111, 111, 111)),
            ],
          ),
        ],
      ),
    );
  }
}
class ProfilePageMobileLandscape extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;

  const ProfilePageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}