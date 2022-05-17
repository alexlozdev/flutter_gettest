import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("onClose");
    //count = 0.obs;
    init();
  }

  @override
  void onInit() {
    super.onInit();

    print("onInit");
  }

  init() {
    count--;
  }
}