import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: NaverMap(
        options: const NaverMapViewOptions(),
        onMapReady: (controller) {
          debugPrint('네이버 맵 로딩됨!');
        },
      ),
    ));
  }
}