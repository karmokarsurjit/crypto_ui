import 'package:crypto_ui/modules/profile/profile_pages/profile_mobile.dart';
import 'package:crypto_ui/modules/profile/profile_pages/profile_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'profile_logic.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => ProfilePageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => ProfilePageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => ProfilePageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => ProfilePageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
