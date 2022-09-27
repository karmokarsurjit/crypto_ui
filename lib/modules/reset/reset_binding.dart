import 'package:get/get.dart';

import 'reset_logic.dart';

class ResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetLogic());
  }
}
