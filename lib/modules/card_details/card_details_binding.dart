import 'package:crypto_ui/modules/card_details/card_details_logic.dart';
import 'package:get/get.dart';



class CardDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardDetailsLogic());
  }
}
