import 'package:cou_tion/presentation/component/market_card.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Center(
              child: MarketCard(
        cafeName: 'Black of Coffees',
        sellerId: 'Ajou10',
        sellerDonationPercentage: 67,
        numOfStamps: 1,
      ))),
    ));
  }
}
