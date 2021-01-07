import 'package:flutter/material.dart';

const imgUrl =
    "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80";

class ScaffoldHomePage extends StatefulWidget {
  @override
  _ScaffoldHomePageState createState() => _ScaffoldHomePageState();
}

class _ScaffoldHomePageState extends State<ScaffoldHomePage> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        iconTheme: IconThemeData(
          color: Colors.orange,
          size: 50,
        ),
        actionsIconTheme:
            IconThemeData(color: Colors.white, size: 40, opacity: 1),
        leading: Icon(Icons.menu),
        shadowColor: Colors.green,
        // flexibleSpace: Container(
        //   color:Colors.green
        // ),
        title: Image.network(
          imgUrl,
          height: 56,
          fit: BoxFit.fill,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print("Press Me");
            },
            child: Icon(Icons.shop_two),
          ),
          IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                print("Favorite Icon Press");
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search Icon Press");
              }),
          IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {
                print("Tune Icon Press");
              })
        ],
      ),
      body: Center(child: Text("This is my app body")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Press Floating Action");
        },
        
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: [
        Icon(Icons.print),
        Icon(Icons.search),
        Icon(Icons.attach_file),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "My Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard), label: "My Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
