import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.short_text,
            color: Colors.black,
            size: 38,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_basket,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
