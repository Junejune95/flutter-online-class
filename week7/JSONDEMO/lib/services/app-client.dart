import 'dart:convert';

import 'package:JSONDEMO/models/contact-model.dart';
import 'package:JSONDEMO/models/friend-model.dart';
import 'package:JSONDEMO/models/photo-model.dart';
import 'package:JSONDEMO/models/post-model.dart';
import 'package:JSONDEMO/models/product-model.dart';
import 'package:flutter/services.dart';

Future<String> _loadAssestsData(String url) {
  return rootBundle.loadString(url);
}

Future<PostModel> loadPostData() async {
  final rawString = await _loadAssestsData("assets/json/post.json");

  final jsonMap = jsonDecode(rawString);

  final post = PostModel.fromJson(jsonMap);
  return post;
}

Future<FriendModel> loadFriendData() async {
  final rawString = await _loadAssestsData("assets/json/friend.json");
  final jsonMap = jsonDecode(rawString);

  final friends = FriendModel.fromJson(jsonMap);
  return friends;
}

Future<ContactModel> loadCotnactData() async {
  final rawString = await _loadAssestsData("assets/json/contact.json");
  final jsonMap = jsonDecode(rawString);

  final contacts = ContactModel.fromJson(jsonMap);
  return contacts;
}

Future<ProductModel> loadProductData() async {
  final rawString = await _loadAssestsData("assets/json/product.json");
  print(rawString);
  final jsonMap = jsonDecode(rawString);

  final products = ProductModel.fromJson(jsonMap);
  return products;
}

Future<PhotoLists> loadPhotoData() async {
  final rawString = await _loadAssestsData("assets/json/photos.json");
  // print(rawString);
  final jsonMap = jsonDecode(rawString);
  final photoList=PhotoLists.fromJson(jsonMap);

  // print(jsonMap);
  return photoList;
}
