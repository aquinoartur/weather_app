import 'package:flutter/material.dart';

Widget gradient2 (){
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 2, 35, 109),
              Color.fromARGB(255, 0, 0, 0),
            ])),
  );
}