import 'package:NAVDEMO/ui/data.dart';
import 'package:flutter/material.dart';

class EmployeePage extends StatelessWidget {
  static const routeName = "employee-page";
  @override
  Widget build(BuildContext context) {
    final Employee emp = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Employee Info",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(emp.id),
          Text(emp.phone)
        ],
      ),
    );
  }
}
