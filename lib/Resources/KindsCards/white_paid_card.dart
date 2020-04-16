import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class WhitePaidCard extends StatelessWidget {
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
            width: 130,
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16),
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
                            'Monday, August 19th',
                            style: normalGreyStyle,
                          ),
                        ]),
                    Spacer(),
                    CircleAvatar(
                      radius: 20,
                        backgroundImage: ExactAssetImage('images/image7.png'))
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
                          Text(
                            'Alexander Anderson',
                            style: boldBlackLargeStyle,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "women's cut".toUpperCase(),
                                style: normalGreyStyle,
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
                                  style: normalBlackSmallStyle,
                                ),
                              )
                            ],
                          ),
                        ]),
                    Spacer(),
                    Text(
                      format.format(80.00),
                      style: boldPurpleLargeStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
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
                      'Schedule Again'.toUpperCase(),
                      style: boldTealLargeStyle,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xff38B2AC),
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
