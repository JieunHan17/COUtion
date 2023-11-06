import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('test')
          )
        ),
      )
    )
    ;
  }
}