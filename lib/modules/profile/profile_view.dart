import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_logic.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();

    return Container();
  }
}
