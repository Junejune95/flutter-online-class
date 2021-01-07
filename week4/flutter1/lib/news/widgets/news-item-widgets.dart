import 'package:flutter/material.dart';
import 'package:flutter1/news/model/article.dart';
import 'package:flutter1/news/shared/app-style.dart';
import 'package:flutter1/news/shared/util/app-data-format.dart';

class NewsItemWidget extends StatelessWidget {
  final Article article;

  const NewsItemWidget({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _articleTop(),
            Text(
              article.title,
              style: artileHeaderStyle,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              article.content,
              style: artileBodyStyle,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
            _articleBottom(),
            Divider(color: Colors.black38)
          ],
        ));
  }

  Widget _articleTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(article.imageUrl),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            article.author,
            style: authorStyle,
          ),
        ],
      ),
    );
  }

  Widget _articleBottom() {
    return Padding(
      padding: const EdgeInsets.only(top:10,bottom:10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right:8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.red,
            ),
          ),
          Text(
            "Reader Later",
            style: authorStyle.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Text(myDateFormat(article.date))
        ],
      ),
    );
  }
}
