import 'package:flutter/material.dart';

enum BottomNavMenu {
  Basic,
  AppBar,
  Custom,
  Collapable,
  Profile,
}

extension BottomNavMenuExtension on BottomNavMenu {
  IconData get menuIcon {
    switch (this) {
      case BottomNavMenu.Basic:
        return Icons.menu;
        break;
      case BottomNavMenu.AppBar:
        return Icons.book;
        break;
      case BottomNavMenu.Custom:
        return Icons.flight;
        break;
      case BottomNavMenu.Collapable:
        return Icons.bookmark;
        break;
      case BottomNavMenu.Profile:
        return Icons.person;
        break;
      default:
        return null;
    }
  }

  String get menuLabel {
    switch (this) {
      case BottomNavMenu.Basic:
        return "Basic";
        break;
      case BottomNavMenu.AppBar:
        return "AppBar";
        break;
      case BottomNavMenu.Custom:
        return "Custom";
        break;
      case BottomNavMenu.Collapable:
        return "Collapable";
        break;
      case BottomNavMenu.Profile:
        return "Profile";
        break;
      default:
        return null;
    }
  }
}
