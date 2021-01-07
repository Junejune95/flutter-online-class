import 'package:flutter/material.dart';
import 'package:flutter1/news/model/article.dart';
// import 'package:flutter1/news/model/article.dart';
import 'package:flutter1/news/widgets/news-item-widgets.dart';

class NewsHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0, //remove shadow
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < 15; i++)
              NewsItemWidget(
                article: news,
              ),
          ],
        ),
      ),
    );
  }
}
