import 'package:bookstore/ui/styles/app-styles.dart';
import 'package:bookstore/ui/widgets/wish-list-book-widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyBookWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 20,
        ),
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Books",
              style: appTitle,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, index) => _BookItemWidget(),
              ),
            ),
       
          ],
        ));
  }
}

class _BookItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://learning-python.com/ora-pp4e-large.jpg",
            // height: 200,
            // width: 140,
            scale: 2.3,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Text("Python",style: bookTitleStyle,),
          SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LinearPercentIndicator(
                width: 120.0,
                lineHeight: 5.0,
                percent: 1,
                backgroundColor: Colors.white,
                progressColor: Color(0xFFF9A923),
              ),
              Text("100%"),
            ],
          )
        ],
      ),
    );
  }
}
