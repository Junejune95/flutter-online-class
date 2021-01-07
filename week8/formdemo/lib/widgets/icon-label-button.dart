import 'package:flutter/material.dart';
import 'package:formdemo/widgets/app-custom-button.dart';

class IconButtonLabel extends AppCustomButton {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final double height;

  IconButtonLabel( {
    Key key,
    @required this.label,
    @required this.icon,
    @required this.onPressed,
    this.height=45,
  })  : assert(
          label != null,
          onPressed != null,
        ),
        super(
          textColor: Colors.white,
          color: Colors.black,
          onPressed: onPressed,
          child: Row(
            children: [
              Icon(icon),
              Text(label),
            ],
          ),
        );
}
