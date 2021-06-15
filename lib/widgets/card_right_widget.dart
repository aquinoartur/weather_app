import 'package:flutter/material.dart';
import 'package:weather_arduino/styles/styles.dart';

Widget cardRightWidget ({required String icon, required String condition}){
  return Align(
    alignment: Alignment.center,
    child: Column(
      children: [
        Image.asset("assets/images/${icon}.png", width: 150),
        Text('$condition', style: TextStyles.conditionStyle),
      ],
    ),
  );
}