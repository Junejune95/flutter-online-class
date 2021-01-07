import 'dart:math';

import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // FlatButton(
                  //   color: Colors.green,
                  //   onPressed: () {},
                  //   child: Text("Press Me"),
                  // )
                  getMyContainer(),
                  getMyContainer(),
                  getMyContainer(),
                  getMyContainer(),
                  getMyContainer(),
                  getMyContainer(),
                  getMyContainer(),
                  getMyContainer(),
                ],
              ),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.green,
                child: Text("Hello"),
              )
            ],
          ),
        ));
  }

  Widget getMyContainer({double h = 60, double w = 60}) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
      child: Container(
        height: h,
        width: w,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1606573544515-fc5acaafd1fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=800&q=80"))),
      ),
    );
  }
}
