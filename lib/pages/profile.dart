import 'package:flutter/material.dart';
import '../common/header.dart';


class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Profile'),
      body: Center(
        child: Text(
          'Profile',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}