import 'package:cou_tion/presentation/component/home_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(child: HomeCard(name: 'test')))),
    ));
  }
}
