import 'package:WIDGETDEMO/column-demo.dart';
import 'package:WIDGETDEMO/container-demo.dart';
import 'package:WIDGETDEMO/layout-demo.dart';
import 'package:WIDGETDEMO/row-demo.dart';
import 'package:WIDGETDEMO/stateful-demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(title: Text("Column Demo")
        ),
        body: LayoutDemo(),
      ),
    
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Less Demo"),
      ),
      body: Center(
          child: Column(
            children: [
              MyFavCityWidget(
                cityName: "New York",
              ),
              MyFavCityWidget(
                cityName: "London",
              ),
              MyFavCityWidget(
                cityName: "Paris",
              ),
        ],
      )),
    );
  }
}

class MyFavCityWidget extends StatelessWidget {
  final String cityName;
  MyFavCityWidget({this.cityName = "NO CITY"});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.blue), child: Text(cityName)),
    );
  }
}
