import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import 'mini_card_widget.dart';

Widget miniCardList(
    {required String card1, required String card2, required String card3}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Row(
      children: [
        miniCardWidget(
            info: card1,
            icon: LineIcon.wind(color: Colors.white, size: 18,)
        ),
        SizedBox(width: 10),
        miniCardWidget(
            info: card2,
            icon: LineIcon.compass(color: Colors.white, size: 18,)
        ),
        SizedBox(width: 10),
        miniCardWidget(
            info: card3,
            icon: LineIcon.angleDoubleDown(color: Colors.white, size: 18,)
        )
      ],
    ),
  );
}
