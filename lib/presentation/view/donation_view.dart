import 'package:cou_tion/presentation/component/app_bar.dart';
import 'package:cou_tion/presentation/component/donation_card.dart';
import 'package:cou_tion/presentation/viewmodel/donation_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/colors.dart';

class DonationPage extends GetView<DonationViewModel> {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: CustomAppBar(isBack: false, title: 'Donation'),
          preferredSize: Size.fromHeight(50),
        ),
        body: Obx(() {
          if (controller.isFetching.isTrue) {
            return const Center(
              child: CircularProgressIndicator(color: mainColor),
            );
          } else {
            return ListView.builder(
                itemCount: controller.donationInfo.length,
                itemBuilder: (context, index) {
                  return DonationCard(
                      name: controller.donationInfo[index].name,
                      description: controller.donationInfo[index].description,
                      logo: controller.donationInfo[index].logo);
                });
          }
        }),
      ),
    ));
  }
}
