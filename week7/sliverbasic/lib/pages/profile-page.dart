import 'package:flutter/material.dart';
import 'package:sliverbasic/my-sliver.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class MyTabbar {
  String title;
  Widget child;
  String image;
  MyTabbar({this.title, this.child,this.image});
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String currentShop;
  List<MyTabbar> pages = [
    MyTabbar(title: "KFC", child: KFC(),image: "https://images.unsplash.com/photo-1585703900468-13c7a978ad86?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60"),
    MyTabbar(title: "Loteria", child: Loteria(),image: "https://images.unsplash.com/photo-1426869981800-95ebf51ce900?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hpY2tlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
    MyTabbar(title: "Marry Brown", child: MarryBrown(),image: "https://images.unsplash.com/photo-1607329367978-0a651fdd8edb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
  ];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: pages.length, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                title: Text(pages[tabController.index].title),
                background: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      pages[tabController.index].image),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: MyCustomAppBar(
                  tabBar: TabBar(
                    controller: tabController,
                    tabs: pages
                        .map<Tab>((e) => Tab(
                              text: e.title,
                            ))
                        .toList(),
                  ),
                  color: Colors.black),
            )
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: pages.map((e) => e.child).toList(),
        ),
      ),
    );
  }
}

class MyCustomAppBar extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final Color color;

  MyCustomAppBar({this.tabBar, this.color});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: tabBar,
      color: color,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class KFC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [staticList(), staticGrid()],
    );
  }
}

class Loteria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Loteria"),
    );
  }
}

class MarryBrown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("MarryBrown"),
    );
  }
}
