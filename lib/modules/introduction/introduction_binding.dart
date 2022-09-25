import 'package:get/get.dart';

import 'introduction_logic.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroductionLogic());
  }
}
