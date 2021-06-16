import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../styles/styles.dart';

Widget cabecalhoWidget(
    {required String time, required String state, required String country}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              LineIcons.clock,
              color: Colors.white,
              size: 16,
            ),
            Text(
              " $time",
              style: TextStyles.t1Style,
            ),
          ],
        ),
        Text("$state | $country", style: TextStyles.t1Style),
      ],
    ),
  );
}
