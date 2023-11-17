import 'package:cou_tion/presentation/view/camera_view.dart';
import 'package:cou_tion/presentation/view/donation_view.dart';
import 'package:cou_tion/presentation/view/home_view.dart';
import 'package:cou_tion/presentation/view/market_view.dart';
import 'package:cou_tion/presentation/view/search_view.dart';
import 'package:cou_tion/presentation/viewmodel/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainViewModel> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    ));
  }

  Widget _bodyWidget() {
    return Obx(() {
      switch (controller.currentNavigationIndex.value) {
        case 0:
          return HomePage();
          break;
        case 1:
          return SearchPage();
          break;
        case 2:
          return DonationPage();
          break;
        case 3:
          return MarketPage();
          // return Navigator(
          //   onGenerateRoute: (rootSettings) {
          //     return MaterialPageRoute(builder: (context) => const MarketPage());
          //   },
          // );
          break;
        case 4:
          return CameraPage();
      }
      return SafeArea(child: Center(child: Text('default')));
    });
  }

  Widget _bottomNavigationBarWidget() {
    return Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              controller.changeCurrentIndex(index);
            },
            currentIndex: controller.currentNavigationIndex.value,
            selectedItemColor: Colors.black,
            selectedFontSize: 12,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  activeIcon: Icon(Icons.search),
                  label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.volunteer_activism_outlined),
                  activeIcon: Icon(Icons.volunteer_activism),
                  label: 'donation'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.store_mall_directory_outlined),
                  activeIcon: Icon(Icons.store_mall_directory),
                  label: 'market'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.photo_camera_outlined),
                  activeIcon: Icon(Icons.photo_camera),
                  label: 'camera'),
            ]));
  }
}
