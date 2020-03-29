import 'package:challenge_20200328/app/modules/product/components/add_cart_button/add_cart_button_widget.dart';
import 'package:challenge_20200328/app/modules/product/components/rating_section/rating_section_widget.dart';
import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:challenge_20200328/app/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailsCardWidget extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsCardWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 30,
                bottom: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Store Name".toUpperCase(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "€ ${product.price.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: button_green,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      RatingSectionWidget()
                    ],
                  ),
                ],
              ),
            ),
            AddCartButtonWidget(),
          ],
        ),
      ),
    );
  }
}
