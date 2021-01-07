import 'package:RICHTEXTDEMO/presentation/common/app-style.dart';
import 'package:RICHTEXTDEMO/presentation/screens/home-screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
    
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: appTitleTextStyle,
                children: [
                  TextSpan(text: "ADAPTIVE\n"),
                  TextSpan(
                      text: "DESIGN",
                      style: appTitleTextStyle.copyWith(
                          fontSize: 50,
                          backgroundColor: Colors.pinkAccent,
                          color: Colors.white70)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.pinkAccent,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) => HomeScreen()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  Text(
                    "Get Started",
                    style: buttonLabelStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
