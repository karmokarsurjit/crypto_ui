import 'package:get/get.dart';

class HistoryLogic extends GetxController {

  showDatePicker({context,initialDate,firstDate,lastDate}) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
    );
  }

  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
