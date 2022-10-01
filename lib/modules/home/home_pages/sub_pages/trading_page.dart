import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';

class TradingPage {
  static tradingPage() {
    return Column(children: [
      Views.appBarView(
        titleTexts: "Trading",
        icon:
            const Icon(Icons.notifications_outlined, color: ConstColors.WHITE),
      ),
    ]);
  }
}
