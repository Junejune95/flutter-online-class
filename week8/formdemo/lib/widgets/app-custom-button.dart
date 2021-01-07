import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final double radius;

  const AppCustomButton({
    Key key,
    @required this.color,
    @required this.textColor,
    @required this.child,
    @required this.onPressed,
    this.height = 80,
    this.radius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
          onPressed: onPressed,
          child: child,
          color: color,
          textColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          )),
    );
  }
}
