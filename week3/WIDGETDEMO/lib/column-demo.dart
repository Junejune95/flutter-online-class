import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth=MediaQuery.of(context).size.width;
    print(deviceWidth);
    return Container(
      width:deviceWidth,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          getMyContainer(),
          getMyContainer(),
          getMyContainer(),
        ],
      ),
    );
  }

  Widget getMyContainer() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orangeAccent,
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1606573544515-fc5acaafd1fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=800&q=80"))),
      ),
    );
  }
}
