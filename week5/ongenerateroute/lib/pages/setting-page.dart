import 'package:flutter/material.dart';
import './setting/setting-pages.dart';

class SettingPage extends StatelessWidget {
  static const routeName = "setting-page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Text(
            "Settings",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
          PhoneSettingWidget(
            onTap: () {},
            icon: Icons.phone_android,
            color: Colors.blue,
            title: "About Phone",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(AboutPhonePage.routeName);
            },
            icon: Icons.upload_file,
            color: Colors.red[300],
            title: "System apps updater",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(SecurityPage.routeName);
            },
            icon: Icons.security,
            color: Colors.green[300],
            title: "Security status",
          ),
          Divider(
            color: Colors.grey,
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(WifiPage.routeName);
            },
            icon: Icons.sim_card,
            color: Colors.orange[300],
            title: "SIM Cards & mobile networks",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(WifiPage.routeName);
            },
            icon: Icons.wifi,
            color: Colors.blue[300],
            title: "Wi-Fi",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(BluetoothPage.routeName);
            },
            icon: Icons.bluetooth,
            color: Colors.blue[300],
            title: "Bluetooth",
          ),
          Divider(
            color: Colors.grey,
          ),
          
        ],
      ),
    );
  }
}

class PhoneSettingWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const PhoneSettingWidget(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.color,
      @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
      ),
    );
  }
}
