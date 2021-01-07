import 'package:badges/badges.dart';
import 'package:bookstore/ui/widgets/my-book-widgets.dart';
import 'package:bookstore/ui/widgets/wish-list-book-widget.dart';
import 'package:flutter/material.dart';

class BookShelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Card(
          color: Color(0xFF333A4C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.search,
                  color: Color(0xFF9CA0A7),
                  size: 25,
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code_outlined),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Badge(
                badgeContent: Text(
                  "13",
                  style: TextStyle(fontSize: 10),
                ),
                badgeColor: Colors.white,
                child: Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          MyBookWidgets(),
          WishListWidget(),
        ],
      ),
    );
  }
}
