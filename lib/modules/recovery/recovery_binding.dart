import 'package:get/get.dart';

import 'recovery_logic.dart';

class RecoveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecoveryLogic());
  }
}
