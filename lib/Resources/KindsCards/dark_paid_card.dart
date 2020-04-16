import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class DarkPaidCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
                height: 208,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/black.jpg'),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.9), BlendMode.dstATop),
                ))),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 80),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 20,
                        backgroundImage: ExactAssetImage('images/black.jpg')),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10:00 - 11:00 AM',
                              style: whiteTextStyle,
                            ),
                            Text(
                              'Monday, Sep 19',
                              style: whiteTextStyle,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black12),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 6, top: 10, left: 16, right: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: <Widget>[
                              Text(
                                "men's cut".toUpperCase(),
                                style: whiteTextStyle,
                              ),
                              SizedBox(width: 5),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 1),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(1),
                                    ),
                                    border:
                                        Border.all(color: Colors.grey[400])),
                                child: Text(
                                  '1 hr',
                                  style: whiteTextStyle,
                                ),
                              )
                            ],
                          ),
                        ]),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          'Paid',
                          style: whiteTextStyle,
                        ),
                        SizedBox(width: 6,),
                        Text(
                          format.format(80.00),
                          style: whiteTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 8),
              Divider(
                color: Colors.black12,
                height: 2,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Schedule Again'.toUpperCase(),
                      style: boldPurpleLargeStyle,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: purpleNewColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
