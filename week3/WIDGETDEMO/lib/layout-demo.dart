import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text("Create Room")),
                getMyContainer(),
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
          ),
        ),
        // SizedBox(
        //   height: 4,
        // ),
        Container(
          margin: EdgeInsets.only(top: 10),
          // height:150,
          padding: EdgeInsets.only(top: 8, bottom: 8),
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryWidget(color: Colors.lightBlue),
                StoryWidget(color: Colors.yellow),
                StoryWidget(color: Colors.lightGreen[200]),
                StoryWidget(color: Colors.pink),
              ],
            ),
          ),
        )
        // Text("Create Story"),
      ],
    );
  }

  Widget getMyContainer({double h = 60, double w = 60}) {
    return Container(
      margin: EdgeInsets.only(right: 8),
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

class StoryWidget extends StatelessWidget {
  final Color color;

  const StoryWidget({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 180,
      width: 100,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
    );
  }
}
