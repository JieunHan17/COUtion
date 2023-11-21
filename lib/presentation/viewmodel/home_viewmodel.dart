import 'package:cou_tion/domain/repository/UserInfoRepository.dart';
import 'package:get/get.dart';
import '../../data/model/user_info.dart';

class HomeViewModel extends GetxController {
  late final UserInfoRepository _userInfoRepository;
  RxList<UserInfo> _userInfoList = <UserInfo>[].obs;
  List<UserInfo> get userInfo => _userInfoList;

  RxBool isFetching = false.obs;

  @override
  void onInit() {
    super.onInit();
    _userInfoRepository = UserInfoRepository();
    _getUserInfoList();
  }
  // HomeViewModel() {
  //   _userInfoRepository = UserInfoRepository();
  //   _getUserInfoList();
  // }

  Future _getUserInfoList() async {
    isFetching(true);
    _userInfoList.value = await _userInfoRepository.getUserInfoList();
    isFetching(false);
  }
}