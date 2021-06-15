import 'package:flutter/material.dart';

BoxDecoration boxDecoration() {
  return BoxDecoration(
      border: Border.all(color: Colors.white.withOpacity(.08)),
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
          colors: [
            Colors.white.withOpacity(.2),
            Colors.white.withOpacity(.05)
          ]));
}
