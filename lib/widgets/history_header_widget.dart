import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:weather_arduino/styles/styles.dart';

Widget historyHeaderWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.center,
          child: Text(
            "Histórico",
            style: TextStyles.historicoStyle,
            textAlign: TextAlign.center,
          )
      ),
      SizedBox(height: 5),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Divider(color: Colors.white)
      ),
      Container(
        padding: EdgeInsets.only(top: 10), //space to header
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: Icon(LineIcons.thermometer34Full, color: Colors.white)
            ),
            Expanded(
                flex: 1,
                child: Icon(LineIcons.clock, color: Colors.white)
            ),
            Expanded(
                flex: 1,
                child: Icon(LineIcons.calendar, color: Colors.white)
            ),
          ],
        ),
      ),
    ],
  );
}
