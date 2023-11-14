import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  final String cafeName;
  final String sellerId;
  final int sellerDonationPercentage;
  final int numOfStamps;

  const MarketCard(
      {Key? key,
      required this.cafeName,
      required this.sellerId,
      required this.sellerDonationPercentage,
      required this.numOfStamps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 130,
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
          child: Row(children: [
            Image(
              image: AssetImage('images/cafe_sample.jpeg'),
              height: 100,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        cafeName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    sellerId,
                    style: TextStyle(fontSize: 17, color: Colors.black38),
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 108, 112, 235)),
                      Text(
                        '$sellerDonationPercentage%',
                        style: TextStyle(
                            color: Color.fromARGB(255, 108, 112, 235)),
                      )
                    ],
                  ),
                  Text(
                    '$numOfStamps stamp(s)',
                    style: TextStyle(color: Color.fromARGB(255, 108, 112, 235)),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
