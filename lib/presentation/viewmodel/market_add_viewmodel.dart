import 'package:get/get.dart';

class MarketAddViewModel extends GetxController {
  RxList<String> dropdownNumOfStamps = ['1', '2', '3', '4'].obs;
  RxString selectedNumOfStamps = '1'.obs;
}
