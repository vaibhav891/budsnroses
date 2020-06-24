import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    Key key,
  }) : super(
          key: key,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(CupertinoIcons.shopping_cart),
              onPressed: () {},
            )
          ],
          title: Text('Buds N Roses'),
        );
}
