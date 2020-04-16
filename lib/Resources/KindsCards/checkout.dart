import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class CheckOutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 5),
                child: Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/535.png'),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 6, left: 16, right: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Golden FaceWash',
                                  style: boldBlackLargeStyle,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Vernon Ball',
                                  style: normalGreyStyle
                                ),
                                Text(
                                  "Aug 19 2018 - 4:00 PM",
                                  style: normalGreyStyle,
                                ),
                              ]),
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
            color: grey,
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Checkout'.toUpperCase(),
                  style: smallPurpleLargeStyle,
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
    );
  }
}
