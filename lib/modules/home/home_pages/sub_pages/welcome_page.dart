import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';

class WelcomePage {
  static welcomePage({context}) {
    return Column(children: [
      Views.appBarView(
        titleTexts: "Hello Vlad",
        bottomTexts: "Welcome back!",
        icon: const Icon(Icons.notifications_outlined, color: ConstColors.WHITE),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        color: ConstColors.BLUE,
          height: 220,
          width: double.infinity,
          child: const Text("Welcome Page",style: TextStyle(color: Colors.white,fontSize: 20))),
    ]);
  }
}
