import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final String name;
  final String description;

  const DonationCard({Key? key, required this.name, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
              )
            ]),
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('images/childfund_logo.jpg'),
                  height: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(name,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(description,
                        style: TextStyle(fontSize: 15, color: Colors.black38))
                  ],
                ))
              ],
            )));
  }
}
