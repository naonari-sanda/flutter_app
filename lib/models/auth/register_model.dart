import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class RegisterModel extends ChangeNotifier {
  String mail = '';
  String password = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signUp() async {
    await _auth.createUserWithEmailAndPassword(
      email: mail,
      password: password,
    );

    FirebaseFirestore.instance.collection('users').add({
      'mail': mail,
      'password': password,
      'createdAt': Timestamp.now(),
    });
  }
}
