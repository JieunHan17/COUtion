import 'package:cou_tion/presentation/viewmodel/main_viewmodel.dart';
import 'package:get/get.dart';

class InitialViewModel implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainViewModel>(() => MainViewModel());
  }
}
