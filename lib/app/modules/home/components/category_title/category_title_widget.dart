import 'package:flutter/material.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String title;

  const CategoryTitleWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 38,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
