import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class PaidMenCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 5,
            right: 30,
            width: 110,
            child: Container(
              height: 125,
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage('images/sign.jpg'),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
            ))),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 110,
            child: Container(
              child: Image.asset(
                'images/men.jpg',
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
                        const EdgeInsets.only(top: 16, left: 10, right: 10),
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
                        bottom: 6, top: 10, left: 10, right: 10),
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
              SizedBox(),
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
