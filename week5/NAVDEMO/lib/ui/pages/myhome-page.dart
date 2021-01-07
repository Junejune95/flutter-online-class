import 'package:NAVDEMO/ui/data.dart';
import 'package:NAVDEMO/ui/pages/employee-page.dart';
import 'package:NAVDEMO/ui/pages/product-lists.dart';
import 'package:NAVDEMO/ui/pages/setting-page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
    static const routeName="/home-page";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => SettingPages()),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.of(context).pushNamed(ProductLists.routeName);
              },
              child: Text("View Product"),
            ),
            TextButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.of(context).pushNamed(EmployeePage.routeName,
                    arguments: Employee(
                      id: "EMP-009-080",
                      phone: "0983534534",
                    ));
              },
              child: Text("View Info"),
            ),
          ],
        ),
      ),
    );
  }
}
