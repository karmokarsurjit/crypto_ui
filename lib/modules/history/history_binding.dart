import 'package:get/get.dart';

import 'history_logic.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryLogic());
  }
}
