import 'package:flutter/material.dart';

// Route
import 'route.dart';
import '../auth/login_page.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  // Headerタイトルを遷移先から取得
  final String _title;
  Header(this._title);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Root(),
              ),
            );
          },
        ),
      ),
      title: Text(_title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
