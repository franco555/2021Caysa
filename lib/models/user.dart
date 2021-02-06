/*import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Users with ChangeNotifier {
  String id;
  String displayName;
  String photoURL;
  String email;

  Users({ 
    this.id, 
    this.displayName, 
    this.photoURL,
    this.email,
  });

  factory Users.fromFirestore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data();
    return Users(
      id: userDoc.id,
      displayName: userData['displayName'],
      photoURL: userData['photoURL'],
      email: userData['email'],
    );
  }

  void setFromFireStore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data();
    this.id = userDoc.id;
    this.displayName = userData['displayName'];
    this.photoURL = userData['photoURL'];
    this.email = userData['email'];
    notifyListeners();
  }
}*/