import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String? username;
  String? name;
  String? dob;
  String? bio;
  String? password;
  List? followers;
  List? following;

  User(
      {this.username,
      this.name,
      this.password,
      this.dob,
      this.bio,
      this.followers,
      this.following});

  List<User> dataListFromSnapshot(QuerySnapshot querySnapshot) {
    return querySnapshot.docs.map((snapshot) {
      final Map<String, dynamic> dataMap =
          snapshot.data() as Map<String, dynamic>;

      return User(
          username: dataMap['username'],
          name: dataMap['name'],
          password: dataMap['password'],
          dob: dataMap['dob'],
          bio: dataMap['bio'],
          followers: dataMap['followers'],
          following: dataMap['following']);
    }).toList();
  }

  String getUidFromUsername(String uname) {
    String uid = '';
    QuerySnapshot querySnap = FirebaseFirestore.instance
        .collection('User')
        .where('username', isEqualTo: uname)
        .snapshots() as QuerySnapshot;
    QueryDocumentSnapshot doc = querySnap.docs[0];
    return uid;
  }
}
