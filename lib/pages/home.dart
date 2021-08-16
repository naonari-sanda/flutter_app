import 'package:flutter/material.dart';
import '../common/header.dart';


class Home extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Home'),
      body: Center(
        child: Text(
            'home',
            style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}