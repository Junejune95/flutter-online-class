import 'package:BOTTOMNAVDEMO/pages/cart-page.dart';
import 'package:BOTTOMNAVDEMO/pages/home-page.dart';
import 'package:BOTTOMNAVDEMO/pages/payment-page.dart';
import 'package:BOTTOMNAVDEMO/pages/profile-page.dart';
import 'package:BOTTOMNAVDEMO/pages/setting-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();

  int _index = 0;
  List<Widget> screens = [
    HomePage(),
    CartPage(),
    PaymentPage(),
    ProfilePage(),
    SettingPage(),
  ];

  _onPageChange(index) {
    print("hello reach");
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: screens,
        controller: _pageController,
        onPageChanged: _onPageChange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
            _pageController.jumpToPage(i);
          });
        },
        items: AppMenu.values
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.appMenuIcon),
                label: e.appLabelMenu,
              ),
            )
            .toList(),
      ),
    );
  }
}

enum AppMenu { Home, Cart, Payment, Profile, Setting }

extension AppMenuExtension on AppMenu {
  String get appLabelMenu {
    switch (this) {
      case AppMenu.Home:
        return "Home";
        break;
      case AppMenu.Cart:
        return "Cart";
        break;
      case AppMenu.Payment:
        return "Payment";
        break;
      case AppMenu.Profile:
        return "Profile";
        break;
      case AppMenu.Setting:
        return "Setting";
        break;
      default:
        return null;
    }
  }

  IconData get appMenuIcon {
    switch (this) {
      case AppMenu.Home:
        return Icons.home;
        break;
      case AppMenu.Cart:
        return Icons.shopping_bag;
        break;
      case AppMenu.Payment:
        return Icons.payment;
        break;
      case AppMenu.Profile:
        return Icons.person;
        break;
      case AppMenu.Setting:
        return Icons.settings;
        break;
      default:
        return null;
    }
  }
}
