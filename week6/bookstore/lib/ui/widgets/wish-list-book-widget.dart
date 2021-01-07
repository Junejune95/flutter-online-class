import 'package:bookstore/ui/styles/app-styles.dart';
import 'package:flutter/material.dart';

class WishListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Text(
              "Wishlisted books",
              style: appTitle,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  crossAxisCount: 2,
                ),
                itemBuilder: (c, index) {
                  return Container(
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images-na.ssl-images-amazon.com/images/I/41Z2YiUEVYL._SX348_BO1,204,203,200_.jpg",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PhP Objects,Patterns, and Practice",
                                style: authorStyle,
                              ),
                              Text(
                                "Matt Zanderster",
                                style: authorStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
