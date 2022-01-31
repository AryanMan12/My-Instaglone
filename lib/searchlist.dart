import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firestore_search/firestore_search.dart';
import 'package:instaglone/Models/user.dart';
import 'package:instaglone/profilepage.dart';
import 'package:instaglone/Models/user.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(fontSize: 20),
              border: InputBorder.none,
              icon: Icon(
                Icons.search,
                size: 24,
                color: Colors.grey,
              )),
        ),
        centerTitle: false,
        elevation: 0,
      ),
    );
  }
}
