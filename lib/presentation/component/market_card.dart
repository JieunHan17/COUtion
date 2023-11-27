import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  final String cafeName;
  final String sellerId;
  final int sellerDonationPercentage;
  final int numOfStamps;
  final String imageUrl;

  const MarketCard(
      {Key? key,
      required this.cafeName,
      required this.sellerId,
      required this.sellerDonationPercentage,
      required this.numOfStamps,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
            Container(
              height: 100,
              width: 100,
              child: Image(image: NetworkImage(imageUrl), fit: BoxFit.cover)
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
