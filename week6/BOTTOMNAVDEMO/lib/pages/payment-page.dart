import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: PageView(
        children: [
          // Container(
          //   child: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       // crossAxisSpacing: 2,
          //       // mainAxisSpacing: 2,
          //       childAspectRatio: 3 / 5,
          //     ),
          //     itemBuilder: (c, index) {
          //       return Card(
          //         child: Image.network(
          //           "https://images.unsplash.com/photo-1592521955615-293525d5dcb9?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHhIeFlUTUhMZ09jfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
          //           fit: BoxFit.cover,
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Container(
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                8,
                (index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Balance"), Icon(Icons.payment)],
                  ),
                ),
              ),
            ),
          ),
          Container(child: Center(child: Text("Third Page"))),
        ],
      ),
    );
  }
}
