import 'package:demo/scaffold-demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldHomePage(),
      debugShowCheckedModeBanner: false,
    );
  
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SafeArea(
              child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  Spacer(),
                  Icon(Icons.search),
                  Icon(Icons.message),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 150,
              color:Colors.orange,
            ),
            Container(
              width: 200,
              height: 150,
              color:Colors.blue,
            )
          ],
        ),
      ),
    );

  }

}