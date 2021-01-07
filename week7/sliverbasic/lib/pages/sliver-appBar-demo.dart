import 'package:flutter/material.dart';
import 'package:sliverbasic/my-sliver.dart';

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
              title: Text("Lunch Meal"),
              background: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1606851686066-c7f17f1ece96?ixid=MXwxMjA3fDF8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
              ),
            ), //asssociated with expanded height => mean expand menu
            expandedHeight: 300,
            floating: true,
            pinned: true, //app bar is stable
            snap:
                true, //working with together flexiblespace => auto down height include animation
            leading: Icon(Icons.arrow_back_ios),
          ),
          dynamicList(),
          staticExtendGrid()
        ],
      ),
    );
  }
}
