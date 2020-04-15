import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/KindsCards/white_paid_card.dart';

class CardsHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cards Hub',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('Cards Hub'), backgroundColor: Colors.deepPurple),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: WhitePaidCard(),
          ),
        ),
      ),
    );
  }
}
