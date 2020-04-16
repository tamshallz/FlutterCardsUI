import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class PurpleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.deepPurple,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/image11.png'),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(color: Colors.black12),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 6, left: 16, right: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '10:00 - 11:00 AM',
                                      style: boldWhiteLargeStyle,
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3, vertical: 1),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(1),
                                          ),
                                          border: Border.all(
                                              color: Colors.grey[400])),
                                      child: Text(
                                        '1 hr',
                                        style: whiteStyle,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'Monday, Aug. 19'.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white38, fontSize: 12),
                                ),
                                Text(
                                  "Men's Cut",
                                  style: whiteTextStyle,
                                ),
                              ]),
                          Spacer(),
                          Text(
                            format.format(80.00),
                            style: whiteStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(
            color: Colors.white,
            height: 2,
          ),
          Container(
            color: Colors.deepPurple,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Checkout'.toUpperCase(),
                  style: whiteStyle,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffffffff),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
