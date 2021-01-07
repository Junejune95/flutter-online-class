import 'package:flutter/material.dart';

ThemeData myAppTheme() {
  //TextStyle
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
          fontFamily: 'Roboto',
          fontSize: 22.0,
          color: Colors.black,
        ),
        title: base.title.copyWith(
          fontFamily: 'Merriweather',
          fontSize: 15.0,
          color: Colors.green
        ),
        display1: base.headline.copyWith(
          fontFamily: 'Roboto',
          fontSize: 24.0,
          color: Colors.white,
        ),
        display2: base.headline.copyWith(
          fontFamily: 'Merriweather',
          fontSize: 22.0,
          color: Colors.grey,
        ),
        caption: base.caption.copyWith(
          color: Color(0xFFCCC5AF),
        ),
        body1: base.body1.copyWith(color: Color(0xFF807A6B)));
  }
  // #010C1F#64C9A2
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      primaryColor: primaryColor,
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFF131E34),
      accentColor: Color(0xFFFFF8E1),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:Color(0xFF010C1F),
        elevation: 3,
        selectedItemColor:Color(0xFF64C9A2),
        unselectedItemColor: Color(0xFFC2C6D1),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      buttonColor: Colors.white,
      backgroundColor: Colors.white,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ));
}


const primaryColor=Color(0xFF131E34);