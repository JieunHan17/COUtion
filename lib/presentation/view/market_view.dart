import 'package:cou_tion/presentation/component/app_bar.dart';
import 'package:cou_tion/presentation/component/market_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/market_viewmodel.dart';

class MarketPage extends GetView<MarketViewModel> {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            child: CustomAppBar(isBack: false, title: 'market'),
            preferredSize: Size.fromHeight(50),
          ),
          body: Obx(
            () => ListView.builder(
              itemCount: controller.saleInfo.length,
              itemBuilder: (context, index) {
                return MarketCard(
                    cafeName: controller.saleInfo[index].cafeName,
                    sellerId: controller.saleInfo[index].sellerId,
                    sellerDonationPercentage:
                        controller.saleInfo[index].sellerDonationPercentage,
                    numOfStamps: controller.saleInfo[index].numOfStamps);
              },
            ),
          )),
    ));
  }
}
