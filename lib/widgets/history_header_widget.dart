import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:weather_arduino/styles/styles.dart';

Widget historyHeaderWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Container(
                child: Text(
                  "Histórico",
                  style: TextStyles.historicoStyle,
                  textAlign: TextAlign.center,
                )
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: Colors.white,
              alignment: Alignment.center,
              icon: LineIcon.eraser(size: 18,),
              onPressed: (){},
            ),
          )
        ],
      ),
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
