import 'package:flutter/material.dart';
import 'package:weather_arduino/styles/styles.dart';

Widget cardLeftWidget(
    {required String temperature,
    required String sensation,
    required String humidity}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$temperature°",
          style: TextStyles.temperatureStyle,
        ),
        Text(
          "Sensação: $sensation°",
          style: TextStyles.t1Style,
        ),
        SizedBox(height: 15),
        Text(
          "Umidade: $humidity%",
          style: TextStyles.t1Style,
        ),
        SizedBox(height: 15),
      ],
    ),
  );
}
