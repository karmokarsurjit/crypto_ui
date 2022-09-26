import 'package:crypto_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashLogic extends GetxController {

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(AppRoutes.INTRODUCTION);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
