import 'package:cou_tion/presentation/viewmodel/market_add_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:cou_tion/presentation/component/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/colors.dart';

class MarketAddPage extends GetView<MarketAddViewModel> {
  const MarketAddPage({super.key});

  Widget _cafeNameZone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('카페 이름',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                )
              ]),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: TextField(
            maxLines: 1,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.start,
            autocorrect: false,
            onSubmitted: (value) {
              debugPrint('finish');
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              focusColor: mainColor,
              hintText: '카페 이름을 작성해주세요',
              helperStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
              hintMaxLines: 1,
            ),
            cursorColor: accentColor,
          ),
        )
      ],
    );
  }

  Widget _numOfStampsZone() {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text('판매하고자 하는 쿠폰 스탬프 개수',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Obx(() => Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                  )
                ]),
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButton(
              value: controller.selectedNumOfStamps.value,
              items: controller.dropdownNumOfStamps.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
              onChanged: (dynamic value) {
                controller.selectedNumOfStamps(value);
              },
            ),
          )),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              child: CustomAppBar(
                isBack: true,
                title: '쿠폰 팔기',
                isAdd: false,
                addFunction: () {},
                isSearch: false,
                searchFunction: () {},
              ),
              preferredSize: Size.fromHeight(50),
            ),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _cafeNameZone(),
                      SizedBox(height: 50),
                      _numOfStampsZone()
                    ]))));
  }
}
