import 'package:flutter/material.dart';

import 'package:challenge_20200328/app/utils/constants.dart';

class CategoryButtonWidget extends StatelessWidget {
  final String title;
  const CategoryButtonWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 12),
        height: 50,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(12)),
        child: Text(
          title,
          style: TextStyle(
            color: button_green,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
            letterSpacing: .3,
          ),
        ),
      ),
    );
  }
}
