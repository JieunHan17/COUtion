import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final bool isBack;
  final String title;
  final bool isAdd;
  final Function()? addFunction;
  final bool isSearch;
  final Function()? searchFunction;

  const CustomAppBar(
      {Key? key,
      required this.isBack,
      required this.title,
      required this.isAdd,
      required this.addFunction,
      required this.isSearch,
      required this.searchFunction})
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
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                      onTap: () {
                        debugPrint('back key is pressed');
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back)),
                ),
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
                    child: InkWell(onTap: addFunction, child: Icon(Icons.add)),
                  ),
                  Visibility(
                    visible: isSearch,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: InkWell(
                        onTap: searchFunction, child: Icon(Icons.search)),
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
