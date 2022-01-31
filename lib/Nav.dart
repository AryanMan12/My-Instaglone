import 'package:flutter/material.dart';
import 'package:instaglone/feed.dart';
import 'package:instaglone/peopleList.dart';
import 'package:instaglone/profilepage.dart';
import 'add_post.dart';
import 'searchlist.dart';
import 'currentprofile.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageNum = 0;
  Icon _homeIcon = Icon(Icons.home);
  Icon _searchIcon = Icon(Icons.search_outlined);
  Icon _addIcon = Icon(Icons.add_circle_outline);
  Icon _profileIcon = Icon(Icons.person_outlined);

  static const List<Widget> _Pages = <Widget>[
    Feed(),
    SearchList(),
    CreatePost(),
    CurrentProfile()
  ];

  void _onPageSelected(int index) {
    setState(() {
      pageNum = index;
      switch (pageNum) {
        case 0:
          _addIcon = const Icon(Icons.add_circle_outline);
          _profileIcon = const Icon(Icons.person_outlined);
          _searchIcon = const Icon(Icons.search);
          _homeIcon = const Icon(Icons.home);
          break;
        case 1:
          _homeIcon = const Icon(Icons.home_outlined);
          _addIcon = const Icon(Icons.add_circle_outline);
          _profileIcon = const Icon(Icons.person_outlined);
          _searchIcon = const Icon(
            Icons.search,
            size: 34,
          );
          break;
        case 2:
          _homeIcon = const Icon(Icons.home_outlined);
          _profileIcon = const Icon(Icons.person_outlined);
          _searchIcon = const Icon(Icons.search);
          _addIcon = const Icon(Icons.add_circle);
          break;
        case 3:
          _homeIcon = const Icon(Icons.home_outlined);
          _addIcon = const Icon(Icons.add_circle_outline);
          _searchIcon = const Icon(Icons.search);
          _profileIcon = const Icon(Icons.person);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _Pages.elementAt(pageNum),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
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
