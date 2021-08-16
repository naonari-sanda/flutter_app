import 'package:flutter/material.dart';
import '../common/header.dart';


class Community extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Community'),
      body: Center(
        child: Text(
          'Community',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}