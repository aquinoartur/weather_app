import 'package:flutter/material.dart';
import 'package:weather_arduino/styles/decoration_style.dart';

import 'card_left_widget.dart';
import 'card_right_widget.dart';

Widget cardWidget (
    { required String temperature,
      required String sensation,
      required String humidity,
      required String icon,
      required String condition,

    }){
  return Padding( //card
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: boxDecoration(),
      child: Row(
        children: [
          cardLeftWidget( //card left
              temperature: temperature,
              sensation: sensation,
              humidity: humidity
          ),
          cardRightWidget(
              icon: icon,
              condition: condition
          ),
        ],
      ),
    ),
  );
}