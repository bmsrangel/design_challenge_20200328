import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingSectionWidget extends StatelessWidget {
  const RatingSectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          "48 reviews",
          style: TextStyle(color: Colors.grey),
        ),
        RatingBar(
          itemSize: 21,
          itemCount: 5,
          initialRating: 5,
          onRatingUpdate: (double value) {},
          itemBuilder: (_, __) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
