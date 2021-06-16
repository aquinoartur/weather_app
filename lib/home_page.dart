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

  Future<Null> _refresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      getClimate();
    });
    return null;
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
      time = climate!.data!.date!.substring(11, 16);
    }

    return Scaffold(
      body: Stack(
        children: [
          toogle == false ? gradient() : gradient2(),
          climate != null
              ? RefreshIndicator(
                onRefresh: _refresh,
                color: Color.fromARGB(255, 2, 35, 109),
                displacement: MediaQuery.of(context).size.height / 4,
                child: CustomScrollView(
                    shrinkWrap: true,
                    slivers: [
                      SliverAppBarWidget(
                          climate!.name!,
                          (bool toogleBack){ //callback
                            setState(() {
                              toogle = toogleBack;
                              if (climate!.data!.icon!.contains("n")){
                                toogle = true;
                              }
                            });
                          }
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          // corpo total
                          children: [
                            cabecalhoWidget(
                              time: time!,
                              state: climate!.state!,
                              country: climate!.country!,
                            ),
                            cardWidget( //card info
                              temperature: climate!.data!.temperature.toString(),
                              sensation: climate!.data!.sensation.toString(),
                              humidity: climate!.data!.humidity.toString(),
                              icon: climate!.data!.icon!,
                              condition: climate!.data!.condition!,
                            ),
                            SizedBox(height: 10),
                            miniCardList(
                              card1: climate!.data!.windVelocity!.toString() + " km/h",
                              card2: climate!.data!.windDirection!,
                              card3: climate!.data!.pressure!.toString() + " hPa",
                            ),
                            SizedBox(height: 10),
                            historyHeaderWidget(),
                            historyBodyWidget(list: list),
                          ],
                        ),
                      )
                    ],
                  ),
              )
              : awaitApiWidget()
        ],
      ),
    );
  }
}
