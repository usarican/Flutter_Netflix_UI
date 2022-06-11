import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone_project/Widgets/MovieList.dart';

import 'Widgets/MovieItem.dart';

class NetflixMainPage extends StatefulWidget {
  const NetflixMainPage({Key? key}) : super(key: key);

  @override
  State<NetflixMainPage> createState() => _NetflixMainPageState();
}

class _NetflixMainPageState extends State<NetflixMainPage> {

  var movieList1 = ["movie1.jpg","movie2.jpg","movie3.jpg","movie4.jpg"];
  var movieList2 = ["movie5.jpg","movie6.jpg","movie7.png","movie8.jpg"];
  var movieList3 = ["movie9.jpg","movie10.jfif","movie11.jpg","movie12.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Image.asset("lib/Images/Netflix_logo.jfif"),
          onPressed: (){},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 70.0),
              child: Text("Diziler",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w500,fontFamily: "NotoSans"),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 70.0),
              child: Text("Filmler",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w500,fontFamily: "NotoSans"),),
            ),
            Text("Listem",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w500,fontFamily: "NotoSans",),),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MovieList(movieList: movieList1, headerName: "Netflix'te Popüler"),
              MovieList(movieList: movieList2, headerName: "Gündemdekiler"),
              MovieList(movieList: movieList3, headerName: "Yeniden İzleyin"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Ana Sayfa"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Ara"),
            BottomNavigationBarItem(icon: Icon(Icons.smart_display_outlined),label: "Çok Yakında"),
            BottomNavigationBarItem(icon: Icon(Icons.download_outlined),label: "İndirilenler"),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Daha Fazla"),
          ],
        ),
      ),
    );
  }
}
