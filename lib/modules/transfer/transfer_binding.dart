import 'package:get/get.dart';

import 'transfer_logic.dart';

class TransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferLogic());
  }
}
