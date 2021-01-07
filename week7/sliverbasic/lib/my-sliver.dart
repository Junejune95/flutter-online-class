import 'package:flutter/material.dart';
import 'dart:math';

List<Widget> listContainer({double height}) => List.generate(
      8,
      (index) => Container(
        color: Color(
          Random().nextInt(0xFF000000),
        ),
        height: height ?? 100,
      ),
    );

staticList() {
  return SliverList(
    delegate: SliverChildListDelegate(listContainer()),
  );
}

fixedExtentList() {
  return SliverFixedExtentList(
    delegate: SliverChildListDelegate(listContainer()),
    itemExtent: 200,
  );
}

dynamicList() {
  return SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext content, int index) {
      return Container(
        height: 150,
        alignment: Alignment.center,
        color: Color(
          Random().nextInt(0xFF000000),
        ),
        child: Text(
          "$index",
          style: TextStyle(fontSize: 30),
        ),
      );
    }, childCount: 10),
  );
}

staticGrid() {
  return SliverGrid(
    delegate: SliverChildListDelegate(
      listContainer(),
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
  );
}

staticExtendGrid() {
  return SliverGrid(
    delegate: SliverChildListDelegate(
      listContainer(),
    ),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 140,
    ),
  );
}

// dynamicExtendGrid() {
//   return SliverGrid(
//       delegate: SliverChildBuilderDelegate((BuildContext content, int index) {
//     return Container(
//       height: 150,
//       alignment: Alignment.center,
//       color: Color(
//         Random().nextInt(0xFF000000),
//       ),
//       child: Text(
//         "$index",
//         style: TextStyle(fontSize: 30),
//       ),
//     );
//   }, childCount: 20));
// }
