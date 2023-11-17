import 'package:cou_tion/presentation/view/main_view.dart';
import 'package:cou_tion/presentation/view/market_view.dart';
import 'package:cou_tion/presentation/viewmodel/initial_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CouTion',
      home: const MainPage(),
      initialBinding: InitialViewModel(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => MainPage()),
        GetPage(name: "/market", page: () => MarketPage())
      ],
    );
  }
}
