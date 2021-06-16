import 'package:flutter/material.dart';
import 'package:weather_arduino/climate.dart';
import 'package:weather_arduino/styles/styles.dart';

Widget historyBodyWidget ({required List<Climate> list} ){
  return Container(
    alignment: Alignment.center,
    child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 10),
      shrinkWrap: true,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 60,
          crossAxisSpacing: .1,
          mainAxisSpacing: .1
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(//temperature
              flex: 1,
              child: Text(
                "${list[index].data!.temperature}°",
                style: TextStyles.t1Style,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(//time
              flex: 1,
              child: Text(
                "${list[index].data!.date!.substring(11, 16)}",
                style: TextStyles.t1Style,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded( //date
                flex: 1,
                child: Text(
                  "${list[index].data!.date!.substring(2, 10)}",
                  style: TextStyles.t1Style,
                  textAlign: TextAlign.center,
                )
            ),
          ],
        );
      },
    ),
  );
}