import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  final String cityName;
  final String companyName;
  final String img;

  const PlaceWidget({Key key, this.cityName, this.companyName, this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.only(right: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/' + img,
                fit: BoxFit.fill,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 2),
                child: Text(
                  cityName,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 2),
                child: Text(
                  companyName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
