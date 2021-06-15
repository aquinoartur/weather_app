import 'package:flutter/material.dart';

Widget gradient (){
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 77, 132, 215),
              Color.fromARGB(255, 2, 35, 109),
            ])),
  );
}