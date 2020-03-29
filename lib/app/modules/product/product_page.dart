import 'package:challenge_20200328/app/modules/product/components/product_details_card/product_details_card_widget.dart';
import 'package:challenge_20200328/app/modules/product/components/top_bar/top_bar_widget.dart';
import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:challenge_20200328/app/utils/constants.dart';
import 'package:flutter/material.dart';

import 'components/product_image/product_image_widget.dart';

class ProductPage extends StatefulWidget {
  final String title;
  final ProductModel product;
  const ProductPage({Key key, this.title = "Product", this.product})
      : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    ProductModel product = widget.product;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ligher_green,
              darker_green,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            TopBarWidget(product: product),
            ProductImageWidget(product: product),
            ProductDetailsCardWidget(product: product),
          ],
        ),
      ),
    );
  }
}
