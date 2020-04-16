import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/KindsCards/men_card.dart';
import 'package:flutter_card_ui/Resources/KindsCards/purple_card.dart';
import 'package:flutter_card_ui/Resources/KindsCards/reschedule_card.dart';
import 'package:flutter_card_ui/Resources/KindsCards/schedule_card.dart';
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
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    WhitePaidCard(),
                    SizedBox(height: 20),
                    MensCard(),
                    SizedBox(height: 20),
                    ScheduleCard(),
                    SizedBox(height: 20),
                    PurpleCard(),
                    SizedBox(height: 20),
                    RescheduleCard(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
