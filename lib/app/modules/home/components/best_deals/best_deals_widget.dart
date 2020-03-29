import 'package:challenge_20200328/app/modules/home/components/deals_card/deals_card_widget.dart';
import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:challenge_20200328/app/utils/product_list.dart';
import 'package:flutter/material.dart';

class BestDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Best deals",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                )),
            FlatButton(
              child: Row(
                children: <Widget>[
                  Text("ALL", style: TextStyle(color: Colors.grey[300])),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    padding: EdgeInsets.all(3.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[300],
                      size: 12,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
        DealsCardWidget(
          dealProduct: ProductModel.fromMap(productList.last),
        ),
      ],
    );
  }
}
