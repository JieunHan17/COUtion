import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool isBack;
  final String title;

  const CustomAppBar({Key? key, required this.isBack, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: isBack,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: InkWell(
                  onTap: () {
                    debugPrint('back key is pressed');
            
                  },
                  child: Icon(Icons.arrow_back)),
            ),
            Text(
              "$title",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            InkWell(
                onTap: () {
                  debugPrint('search button is pressed');
                },
                child: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}
