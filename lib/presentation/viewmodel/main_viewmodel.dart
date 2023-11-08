import 'package:get/get.dart';

class MainViewModel extends GetxController {
  final RxInt currentNavigationIndex = 0.obs;

  void changeCurrentIndex(int index) {
    currentNavigationIndex(index);
  }
}