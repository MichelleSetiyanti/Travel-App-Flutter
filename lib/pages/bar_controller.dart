import 'package:get/get.dart';

class BarController extends GetxController {
  RxInt indexBar = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setSelectedIndexPage({int index = 0}) {
    indexBar.value = index;
  }
}
