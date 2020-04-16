import 'package:flutter/material.dart';
import 'package:flutter_card_ui/Resources/themes.dart';

import 'package:intl/intl.dart';


import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'package:flat_icons_flutter/flat_icons_flutter.dart';


// import 'package:outline_material_icons/outline_material_icons.dart';

NumberFormat format = NumberFormat.simpleCurrency();

class RescheduleCard extends StatelessWidget {
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
                    'Monday, August 19th',
                    style: normalGreyStyle,
                  ),
                ]),
                Spacer(),
                CircleAvatar(
                    radius: 20,
                    backgroundImage: ExactAssetImage('images/image2.png'))
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
                  Text(
                    'Lindsey Johnson',
                    style: boldBlackLargeStyle,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "first visit".toUpperCase(),
                        style: normalGreyStyle,
                      ),
                    ],
                  ),
                ]),
                Spacer(),
                Row(
                  children: <Widget>[
                    IconButton(icon: Icon(MdiIcons.chatOutline, color: Colors.deepPurple,), onPressed: (){}),
                    IconButton(icon: Icon(MdiIcons.phone), onPressed: (){}, color: teal,)
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
          Padding(
            padding:
                const EdgeInsets.only(bottom: 6, top: 10, left: 16, right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Blowout and style",
                      style: normalGreyStyle,
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
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
                Spacer(),
                Text(
                  format.format(80.00),
                  style: boldPurpleLargeStyle,
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 120,
                    padding: EdgeInsets.all(10),
                    margin:
                        const EdgeInsets.only(bottom: 15, left: 10, top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: grey)),
                    child: Center(child: Text('Reschedule')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 120,
                    padding: EdgeInsets.all(10),
                    margin:
                        const EdgeInsets.only(bottom: 15, left: 10, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepPurple,
                    ),
                    child: Center(
                      child: Text(
                        'Approve',
                        style: whiteStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
