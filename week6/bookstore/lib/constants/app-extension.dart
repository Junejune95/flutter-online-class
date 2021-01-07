import 'package:bookstore/ui/enum/my-app-enum.dart';
import 'package:flutter/material.dart';

extension BottonNavMenuExtension on BottomNavMenu {
  //label
  String get menuLabel {
    switch (this) {
      case BottomNavMenu.BookShelf:
        return "BookShelf";
        break;
      case BottomNavMenu.Blog:
        return "Blog";
        break;
      case BottomNavMenu.BookStore:
        return "BookStore";
        break;
      case BottomNavMenu.Community:
        return "Community";
        break;
      default:
    }
  }

  IconData get menuIcon {
    switch (this) {
      case BottomNavMenu.BookShelf:
        return Icons.library_books;
        break;
      case BottomNavMenu.BookStore:
        return Icons.store;
        break;
      case BottomNavMenu.Blog:
        return Icons.list_rounded;
        break;
      case BottomNavMenu.Community:
        return Icons.group_work_outlined;
        break;
      default:
        return null;
    }
  }
}
