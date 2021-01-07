import 'package:flutter/material.dart';

class MyBoxWidget extends StatelessWidget {
  final double width;
  final double height;
  final String img;
  const MyBoxWidget({Key key, this.width, this.height, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/"+img),
        ),
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      // child: Image.asset(
      //   "assets/images/t1.jpeg",
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
