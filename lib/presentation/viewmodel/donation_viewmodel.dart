import 'package:cou_tion/domain/repository/DonationInfoRepository.dart';
import 'package:get/get.dart';
import '../../data/model/donation_info.dart';

class DonationViewModel extends GetxController {
  late final DonationInfoRepository _donationInfoRepository;
  RxList<DonationInfo> _donationInfoList = <DonationInfo>[].obs;
  List<DonationInfo> get donationInfo => _donationInfoList;

  RxBool isFetching = false.obs;

  @override
  void onInit() {
    super.onInit();
    _donationInfoRepository = DonationInfoRepository();
    _getDonationInfoList();
  }

  Future _getDonationInfoList() async {
    isFetching(true);
    _donationInfoList.value = await _donationInfoRepository.getDonationInfoList();
    isFetching(false);
  }
}