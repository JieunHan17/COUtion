import 'package:cou_tion/presentation/viewmodel/donation_viewmodel.dart';
import 'package:cou_tion/presentation/viewmodel/main_viewmodel.dart';
import 'package:cou_tion/presentation/viewmodel/home_viewmodel.dart';
import 'package:cou_tion/presentation/viewmodel/market_add_viewmodel.dart';
import 'package:cou_tion/presentation/viewmodel/market_viewmodel.dart';
import 'package:cou_tion/presentation/viewmodel/mypage_viewmodel.dart';
import 'package:cou_tion/presentation/viewmodel/search_viewmodel.dart';
import 'package:get/get.dart';

class InitialViewModel implements Bindings {
  @override
  void dependencies() {
    Get.put(MainViewModel());
    Get.put(HomeViewModel());
    Get.put(MarketViewModel());
    Get.put(SearchViewModel());
    Get.put(DonationViewModel());
    Get.put(MyPageViewModel());
    Get.put(MarketAddViewModel());
  }
}

/*
    Get.lazyPut<MainViewModel>(() => MainViewModel());
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
    Get.lazyPut<MarketViewModel>(() => MarketViewModel());
    Get.lazyPut<SearchViewModel>(() => SearchViewModel());
    Get.lazyPut<DonationViewModel>(() => DonationViewModel());
    Get.lazyPut<MyPageViewModel>(() => MyPageViewModel());
*/