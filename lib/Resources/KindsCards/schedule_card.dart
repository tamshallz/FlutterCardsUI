import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class ScheduleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    '10:00 - 11:00 AM',
                    style: boldBlackLargeStyle,
                  ),
                  Text(
                    'Tuesday, Sep 19th',
                    style: normalGreyStyle,
                  ),
                ]),
                Spacer(),
                CircleAvatar(
                    backgroundImage: ExactAssetImage('images/image1.png'))
              ],
            ),
          ),
          Divider(color: Colors.black12),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 6, top: 10, left: 16, right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: <Widget>[
                      Text(
                        "men's cut".toUpperCase(),
                        style: normalGreyStyle,
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(1),
                            ),
                            border: Border.all(color: Colors.grey[400])),
                        child: Text(
                          '1 hr',
                          style: normalBlackSmallStyle,
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
                      style: smallTealLargeStyle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      format.format(178.56),
                      style: smallTealLargeStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: Text(
              '+2 Products',
              style: boldPurpleLargeStyle,
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
                  'Schedule Again',
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
    );
  }
}
