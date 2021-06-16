import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:weather_arduino/styles/styles.dart';

class SliverAppBarWidget extends StatefulWidget {
  final String text;
  SliverAppBarWidget(this.text, this.toogleBack);
  final Function(bool) toogleBack;

  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  bool toogle = false;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      floating: false,
      expandedHeight: 80,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          widget.text,
          style: TextStyles.appBarTitleStyle,
        ),
        centerTitle: true,
      ),
      actions: [
        IconButton(
          splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: (){
              setState(() {
                toogle = !toogle;
                widget.toogleBack(toogle);
              });
            },
            icon: toogle == true ? Icon(Icons.nights_stay, size: 20,) : Icon(Icons.wb_sunny_sharp, size: 20,)
        )
      ],
    );
  }
}
