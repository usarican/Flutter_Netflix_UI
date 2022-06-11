import 'package:flutter/material.dart';
import 'MovieItem.dart';

class MovieList extends StatelessWidget {
  List<String> movieList;
  String headerName;


  MovieList({required this.movieList,required this.headerName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("$headerName",style: TextStyle(color: Colors.white,fontFamily: "NotoSansMedium",fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 5.0),
                child: MovieItem("${movieList[0]}"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: MovieItem("${movieList[1]}"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: MovieItem("${movieList[2]}"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: MovieItem("${movieList[3]}"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
