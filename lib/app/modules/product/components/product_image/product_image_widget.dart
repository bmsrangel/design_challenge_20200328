import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  final ProductModel product;
  const ProductImageWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * .55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(product.picture),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
