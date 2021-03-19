import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blue,
        //canvasColor: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                  size: 40,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.grey,
                  size: 40,
                ),
                label: 'Coming soon'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 40,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.download_outlined,
                color: Colors.grey,
                size: 40,
              ),
              label: 'Downloads',
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
