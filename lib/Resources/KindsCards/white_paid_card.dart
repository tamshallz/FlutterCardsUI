import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

class WhitePaidCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 10, left: 16, right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    backgroundImage: ExactAssetImage('images/image2.png'))
              ],
            ),
          ),
          Divider(color: Colors.black12),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, top: 5, left: 16, right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(1),
                            ),
                            border: Border.all(color: Colors.grey[400])),
                            child: Text('1 hr', style: normalBlackSmallStyle,),
                      )
                    ],
                  ),
                ]),
                Spacer(),
                CircleAvatar(
                    backgroundImage: ExactAssetImage('images/image2.png'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
