import 'package:get/get.dart';

import 'signup_logic.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupLogic());
  }
}
