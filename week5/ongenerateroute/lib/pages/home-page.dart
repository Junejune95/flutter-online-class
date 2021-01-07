import 'package:flutter/material.dart';
import 'package:ongenerateroute/pages/profile-page.dart';
import 'package:ongenerateroute/pages/search-page.dart';

import 'package:ongenerateroute/pages/setting-page.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "/home-page";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(SearchPage.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProfilePage.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
          ),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushNamed(SettingPage.routeName);
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountName: Text("Zon Home"),
              accountEmail: Text("seinmama96@gmail.com"),
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.apps,
              label: "My apps & game",
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.notifications_outlined,
              label: "Notifications",
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.autorenew,
              label: "Subscriptions",
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.bookmark_outline,
              label: "Wishlist",
            ),
            Divider(
              color: Colors.grey,
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.person_outline,
              label: "Account",
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.payment_outlined,
              label: "Payment methods",
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.security_outlined,
              label: "Play Protect",
            ),
            SideBarList(
              onTap: () {},
              icon: Icons.settings,
              label: "Settings",
            ),
            Divider(
              color: Colors.grey,
            ),
            SideBarList(
              onTap: () {},
              label: "Settings",
            ),
            SideBarList(
              onTap: () {},
              label: "Help & feedback",
            ),
              SideBarList(
              onTap: () {},
              label: "Help & feedback",
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(),
      body: ListView.separated(
          itemCount: 200,
          separatorBuilder: (c, index) => Divider(
                color: Colors.grey,
              ),
          itemBuilder: (c, index) {
            print(index);
            return ListTile(
              title: Text("Today news $index"),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
            );
          }),
    );
  }
}

class SideBarList extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const SideBarList(
      {Key key, this.icon, @required this.label, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        leading: Icon(
          icon,
        ),
        title: Text(label),
        trailing: Icon(Icons.arrow_forward_ios));
  }
}
