import 'package:flutter/material.dart';
import 'add_post.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageNum = 0;
  Icon _homeIcon = Icon(Icons.home_outlined);
  Icon _searchIcon = Icon(Icons.search_outlined);
  Icon _addIcon = Icon(Icons.add_circle_outline);
  Icon _profileIcon = Icon(Icons.person_outlined);

  static const List<Widget> _Pages = <Widget>[
    Text('Index 0: Home Page'),
    Text('Index 1: Search Page'),
    CreatePost(),
    Text('Index 4: Profile Page'),
  ];

  void _onPageSelected(int index) {
    setState(() {
      pageNum = index;
      switch (pageNum) {
        case 0:
          _addIcon = Icon(Icons.add_circle_outline);
          _profileIcon = Icon(Icons.person_outlined);
          _searchIcon = Icon(Icons.search);
          _homeIcon = Icon(Icons.home);
          break;
        case 1:
          _homeIcon = Icon(Icons.home_outlined);
          _addIcon = Icon(Icons.add_circle_outline);
          _profileIcon = Icon(Icons.person_outlined);
          _searchIcon = Icon(
            Icons.search,
            size: 28,
          );
          break;
        case 2:
          _homeIcon = Icon(Icons.home_outlined);
          _profileIcon = Icon(Icons.person_outlined);
          _searchIcon = Icon(Icons.search);
          _addIcon = Icon(Icons.add_circle);
          break;
        case 3:
          _homeIcon = Icon(Icons.home_outlined);
          _addIcon = Icon(Icons.add_circle_outline);
          _searchIcon = Icon(Icons.search);
          _profileIcon = Icon(Icons.person);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Instaglone",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w500,
              fontFamily: "Billabong"),
        ),
        elevation: 0,
      ),
      body: Center(
        child: _Pages.elementAt(pageNum),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: _homeIcon, label: '', backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: _searchIcon, label: '', backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: _addIcon, label: '', backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: _profileIcon, label: '', backgroundColor: Colors.white),
        ],
        currentIndex: pageNum,
        onTap: _onPageSelected,
      ),
    );
  }
}