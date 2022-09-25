import 'package:get/get.dart';

import 'signin_logic.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninLogic());
  }
}
