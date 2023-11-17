import 'package:cou_tion/presentation/component/home_card.dart';
import 'package:cou_tion/presentation/view/market_view.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 20),
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
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '쿠션감',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '${controller.userInfo[0].donationPercentage}%',
                            style: TextStyle(
                                color: Color.fromARGB(255, 13, 197, 254),
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 13, 197, 254)),
                          ),
                        ],
                      )),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                  decoration: const BoxDecoration(
                                      color:
                                          Color.fromARGB(255, 108, 112, 235))),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0, vertical: 13.0),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => MarketPage()));
                                Get.toNamed('/market');
                              },
                              child: const Text('쿠션 상점'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/cushion.png'),
                        height: 80,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CouTion point',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${controller.userInfo[0].point} cp',
                            style: TextStyle(
                                color: Color.fromARGB(255, 13, 197, 254),
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 13, 197, 254)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(
                      child: InkWell(
                    onTap: () {
                      debugPrint('판매 쿠폰 button is pressed');
                    },
                    child: HomeCard(
                        name:
                            '판매 쿠폰 ${controller.userInfo[0].numOfSellingCoupons}'),
                  )),
                  Center(
                      child: InkWell(
                    onTap: () {
                      debugPrint('보유 쿠폰 button is pressed');
                    },
                    child: HomeCard(
                        name: '보유 쿠폰 ${controller.userInfo[0].numOfCoupons}'),
                  )),
                  Center(
                      child: InkWell(
                          onTap: () {
                            debugPrint('review button is pressed');
                          },
                          child: HomeCard(name: '거래 후기')))
                ],
              ))),
    )));
  }
}
