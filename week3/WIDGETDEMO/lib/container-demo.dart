import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(),
                borderRadius: BorderRadius.circular(30)),
            child: Text("Border Decorated Container"),
          ),
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            // width: 120,
            // height: 350,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            child: Container(
              height: 120,
              width: 350,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1606573544515-fc5acaafd1fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=800&q=80"))),
            ),
          ),
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(color: Colors.grey, boxShadow: [
              BoxShadow(
                  color: Colors.green,
                  offset: Offset(-2, 4),
                  blurRadius: 5,
                  spreadRadius: 5),
              BoxShadow(
                color: Colors.orangeAccent,
                blurRadius: 5,
                spreadRadius: 5,
              ),
            ]),
          ),
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.grey,
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.orangeAccent,
                ])
                // gradient: LinearGradient(
                //   [
                //      Colors.green,
                //   Colors.orangeAccent,
                //   ]
                // ),
                ),
          ),
        ],
      ),
    );
  }
}
