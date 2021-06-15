import 'package:flutter/material.dart';
import 'package:weather_arduino/styles/decoration_style.dart';
import 'package:weather_arduino/styles/styles.dart';

Widget miniCardWidget ({required String info, required Icon icon}){
  return Expanded(
    flex: 1,
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: boxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(info, style: TextStyles.t1Style,),
        ],
      )
    ),
  );
}