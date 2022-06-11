import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  String imageName;


  MovieItem(this.imageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/Images/${imageName}"),
          fit: BoxFit.fill,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              1.0, // Move to right 10  horizontally
              1.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
    );
  }
}


