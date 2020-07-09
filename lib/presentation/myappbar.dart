import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String titleText;
  MyAppBar(
    this.titleText, {
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
          title: Text(titleText),
        );
}
