import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';
// import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class MensCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 123,
            child: Container(
              child: Image.asset(
                'images/image10.png',
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '10:00 - 11:00 AM',
                                style: boldBlackLargeStyle,
                              ),
                              Text(
                                'Monday, Aug 19th',
                                style: normalGreyStyle,
                              ),
                            ]),
                        Spacer(),
                        CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('images/image3.png'))
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
                        Row(
                          children: <Widget>[
                            Text(
                              "men's cut".toUpperCase(),
                              style: smallGreyStyle,
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
                                style: normalBlackSmallStyle,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text(
                              'Paid',
                              style: smallTealLargeStyle,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              format.format(80.00),
                              style: smallTealLargeStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
