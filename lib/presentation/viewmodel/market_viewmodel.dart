import 'package:cou_tion/domain/repository/SaleInfoRepository.dart';
import 'package:get/get.dart';
import '../../data/model/sale_info.dart';

class MarketViewModel extends GetxController {
  late final SaleInfoRepository _saleInfoRepository;
  RxList<SaleInfo> _saleInfoList = <SaleInfo>[].obs;
  List<SaleInfo> get saleInfo => _saleInfoList;

  RxBool isFetching = false.obs;

  @override
  void onInit() {
    super.onInit();
    _saleInfoRepository = SaleInfoRepository();
    _getSaleInfoList();
  }

  Future _getSaleInfoList() async {
    isFetching(true);
    _saleInfoList.value = await _saleInfoRepository.getSaleInfoList();
    isFetching(false);
  }
}