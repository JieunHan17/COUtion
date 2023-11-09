import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String name;

  const HomeCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Colors.black38, width: 1.0))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
