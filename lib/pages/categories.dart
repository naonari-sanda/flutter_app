import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../common/header.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Categories'),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('books').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return ListView(
            children:
                snapshot.requireData.docs.map((DocumentSnapshot document) {
              return ListTile(
                title: Text(document['title']),
              );
            }).toList(),
          );
        },
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: Header('Categories'),
  //     body: Center(
  //       child: Text(
  //         'Community',
  //         style: Theme.of(context).textTheme.headline4,
  //       ),
  //     ),
  //   );
  // }
}
