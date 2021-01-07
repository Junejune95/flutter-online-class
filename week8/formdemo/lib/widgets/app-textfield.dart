import 'package:flutter/material.dart';

typedef Validator = String Function(String);

class AppTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData icon;
  final String prefix;
  final TextEditingController controller;
  final TextInputType textInputType;
  final Validator validator;

  const AppTextField({
    Key key,
    @required this.label,
    @required this.hintText,
    @required this.icon,
    @required this.prefix,
    @required this.controller,
    @required this.validator,
    this.textInputType = TextInputType.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            labelText: label,
            prefix: Text(prefix != null ? prefix : ""),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
