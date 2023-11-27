import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool isBack;
  final String title;
  final bool isAdd;
  final bool isSearch;

  const CustomAppBar(
      {Key? key,
      required this.isBack,
      required this.title,
      required this.isAdd,
      required this.isSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Visibility(
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
            ),
            Expanded(
              flex: 1,
              child: Text(
                "$title",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Visibility(
                    visible: isAdd,
                    child: InkWell(
                        onTap: () {
                          debugPrint('add button is pressed');
                        },
                        child: Icon(Icons.add)),
                  ),
                  Visibility(
                    visible: isSearch,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: InkWell(
                        onTap: () {
                          debugPrint('search button is pressed');
                        },
                        child: Icon(Icons.search)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
