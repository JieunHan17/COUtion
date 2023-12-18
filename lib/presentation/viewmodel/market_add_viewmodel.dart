import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MarketAddViewModel extends GetxController {
  RxList<String> dropdownNumOfStamps = ['1', '2', '3', '4'].obs;
  RxString selectedNumOfStamps = '1'.obs;
  RxString imagePath = ''.obs;
  
  Future getImage(ImageSource imageSource) async {
    print('check');
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: imageSource);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
