import 'package:cou_tion/presentation/helper/location.dart';
import 'package:cou_tion/presentation/view/main_view.dart';
import 'package:cou_tion/presentation/view/market_add_view.dart';
import 'package:cou_tion/presentation/view/market_view.dart';
import 'package:cou_tion/presentation/viewmodel/initial_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Location location = Location();
  await location.getCurrentLocation();

  await NaverMapSdk.instance.initialize(
      clientId: 'rkeqhcz4st',
      onAuthFailed: (error) {
        debugPrint('Auth failed: $error');
      });

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
        GetPage(
            name: "/market/add",
            page: () => MarketAddPage(),
            transition: Transition.noTransition)
      ],
    );
  }
}
