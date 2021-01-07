import 'package:RICHTEXTDEMO/presentation/common/app-style.dart';
import 'package:RICHTEXTDEMO/presentation/widgets/app-bar.dart';
import 'package:RICHTEXTDEMO/presentation/widgets/my-box-container.dart';
import 'package:RICHTEXTDEMO/presentation/widgets/offer-box.dart';
import 'package:RICHTEXTDEMO/presentation/widgets/place-widget.dart';
import 'package:RICHTEXTDEMO/presentation/widgets/sutitle-header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                MyAppBar(),
                Text(
                  "Exlore Myanmar Place To Visit",
                  style: touristTitle,
                ),
                //popular
                Column(
                  children: [
                    SutitleHeader(
                      title: "Popular",
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PlaceWidget(
                            cityName: "Bagon",
                            companyName: "JJ Co.,ltd",
                            img: "t2.jpg",
                          ),
                          PlaceWidget(
                            cityName: "Ngwe Saung",
                            companyName: "DD Co.,ltd",
                            img: "t1.jpeg",
                          ),
                          PlaceWidget(
                            cityName: "Mandalay",
                            companyName: "CC Co.,ltd",
                            img: "t3.jpeg",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Travel agency
                Column(
                  children: [
                    SutitleHeader(
                      title: "Travel Agencies",
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i = 0; i < 10; i++)
                            MyBoxWidget(
                              width: 70,
                              height: 70,
                              img: "logo.jpeg",
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SutitleHeader(
                      title: "All offers",
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          for (var i = 0; i < 10; i++)
                            OfferBox(
                              countryName: "Myanmar",
                              companyName: "JJ",
                              img: "t2.jpg",
                              weather: "30 C",
                              distance: "3 cm",
                            )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
