import 'package:flutter/material.dart';

class SettingPages extends StatelessWidget {
   static const routeName="/setting-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go Home Page"),
          ),
        ],
      ),
    );
  }
}
