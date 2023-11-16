import 'package:cou_tion/presentation/component/home_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/home_viewmodel.dart';

class HomePage extends GetView<HomeViewModel> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Obx(
      () => SafeArea(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              controller.userInfo[0].name,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '고객님',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Text(
                        '프로필 수정',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black38,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(child: HomeCard(name: '판매 쿠폰 ${controller.userInfo[0].numOfSellingCoupons}')),
                  Center(child: HomeCard(name: '보유 쿠폰 ${controller.userInfo[0].numOfCoupons}')),
                  Center(child: HomeCard(name: '거래 후기'))
                ],
              ))),
    )));
  }
}
