import 'package:cou_tion/presentation/component/app_bar.dart';
import 'package:cou_tion/presentation/component/donation_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationPage extends GetView<DonationPage> {
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return DonationCard(
                name: "초록우산",
                description: "초록우산 어린이재단은 75년 동안 빈곤과 질병으로 고통받는 아동을...",
              );
            }),
      ),
    ));
  }
}
