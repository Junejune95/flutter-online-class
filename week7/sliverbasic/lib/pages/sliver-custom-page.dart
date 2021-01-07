import 'package:flutter/material.dart';
import 'package:sliverbasic/my-sliver.dart';

class SliverCustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: MyCustomAppBar(),
            floating: true,
          ),
          staticList(),
        ],
      ),
    );
  }
}

class MyCustomAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 18,
          left: 16,
          child: Text("Our Meal"),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 75;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
