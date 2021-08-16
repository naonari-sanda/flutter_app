import 'package:flutter/material.dart';
import '../common/header.dart';


class Rewards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Rewards'),
      body: Center(
        child: Text(
          'Rewards',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}