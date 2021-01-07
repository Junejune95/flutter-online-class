import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sliverbasic/my-sliver.dart';

class CollapableList extends StatelessWidget {
  SliverPersistentHeader headerLabel(String headerLabel) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _MyAppBar(
          maxHeight: 100,
          minHeight: 75,
          child: Container(
            color: Colors.pinkAccent,
            alignment: Alignment.center,
            child: Text(
              headerLabel,
              style: TextStyle(fontSize: 28,color: Colors.white),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collapable"),
      ),
      body: CustomScrollView(
        slivers: [
          headerLabel("Section 1"),
          staticList(),
          headerLabel("Section 2"),
          dynamicList(),
          headerLabel("Section 3"),
          staticGrid(),
          headerLabel("Section 4"),
          staticExtendGrid(),
        ],
      ),
    );
  }
}

class _MyAppBar extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double maxHeight;
  final double minHeight;

  _MyAppBar({
    @required this.child,
    @required this.maxHeight,
    @required this.minHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant _MyAppBar oldDelegate) {
    return maxHeight != oldDelegate.maxExtent ||
        minHeight != oldDelegate.minExtent ||
        child != oldDelegate.child;
  }
}
