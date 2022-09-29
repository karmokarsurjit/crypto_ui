import 'package:get/get.dart';

class HomeLogic extends GetxController {
  var selectedIndex = 0.obs ;

  changePage(int index){
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
  
  @override
  void onReady() {
    super.onReady();
    }
  }
