import 'package:flutter/material.dart';

Widget awaitApiWidget() {
  return Center(
      child: CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(Colors.white),
  ));
}
