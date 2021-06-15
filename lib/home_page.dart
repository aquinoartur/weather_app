import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_arduino/api.dart';
import 'package:weather_arduino/climate.dart';
import 'package:weather_arduino/widgets/await_api_widget.dart';
import 'package:weather_arduino/widgets/cabecalhoWidget.dart';
import 'package:weather_arduino/widgets/card_widget.dart';
import 'package:weather_arduino/widgets/gradient.dart';
import 'package:weather_arduino/widgets/gradient2.dart';
import 'package:weather_arduino/widgets/history_body_widget.dart';
import 'package:weather_arduino/widgets/history_header_widget.dart';
import 'package:weather_arduino/widgets/mini_card_list_widget.dart';
import 'package:weather_arduino/widgets/sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Climate? climate;
  Api api = Api();
  String? time;
  String? date;
  List<Climate> list = [];
  bool toogle = false;

  getClimate() async {
    final json = await api.fetch();
    print(json);
    setState(() {
      climate = Climate.fromJson(json);
      list.add(climate!);
    });
  }

  @override
  void initState() {
    super.initState();
    getClimate();
  }

  @override
  Widget build(BuildContext context) {
    if (climate != null) {
      date = climate!.data!.date!.substring(0, 10);
      time = climate!.data!.date!.substring(11, 19);
    }

    return Scaffold(
      body: Stack(
        children: [
          toogle == false ? gradient() : gradient2(),
          climate != null
              ? CustomScrollView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    SliverAppBarWidget(
                        climate!.name!,
                        (bool toogleBack){ //callback
                          setState(() {
                            toogle = toogleBack;
                          });
                        }
                    ),
                    SliverToBoxAdapter(
                      child: Column( //corpo total
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //cabeçalho
                          cabecalhoWidget(
                            time: time!,
                            state: climate!.state!,
                            country: climate!.country!,
                          ),
                          SizedBox(height: 10),
                          cardWidget( //card info
                            temperature: climate!.data!.temperature.toString(),
                            sensation: climate!.data!.sensation.toString(),
                            humidity: climate!.data!.humidity.toString(),
                            icon: climate!.data!.icon!,
                            condition: climate!.data!.condition!,
                          ),
                          miniCardList(
                            card1: climate!.data!.windVelocity!.toString() + " km/h",
                            card2: climate!.data!.windDirection!,
                            card3: climate!.data!.pressure!.toString() + " hPa",
                          ),
                          SizedBox(height: 20),
                          historyHeaderWidget(),
                          historyBodyWidget(list: list),
                        ],
                      ),
                    )
                  ],
                )
              : awaitApiWidget()
        ],
      ),
    );
  }
}
