import 'package:NAVDEMO/ui/pages/employee-page.dart';
import 'package:NAVDEMO/ui/pages/myhome-page.dart';
import 'package:NAVDEMO/ui/pages/product-lists.dart';
import 'package:NAVDEMO/ui/pages/setting-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        MyHomePage.routeName : (c)=> MyHomePage(title:"My home page"),
        SettingPages.routeName:(c)=>SettingPages(),
        ProductLists.routeName:(c)=>ProductLists(),
        EmployeePage.routeName:(c)=>EmployeePage(),
      },
      initialRoute:  MyHomePage.routeName,
      
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

