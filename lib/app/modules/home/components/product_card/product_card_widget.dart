import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:challenge_20200328/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel productModel;
  const ProductCardWidget({Key key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: () {
            Modular.to.pushNamed("/product", arguments: productModel);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 180,
                height: 280,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      ligher_green,
                      darker_green,
                    ],
                  ),
                ),
                child: Image.asset(
                  productModel.picture,
                  height: 170,
                ),
              ),
              SizedBox(height: 15),
              Text(
                productModel.title,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "€ ${productModel.price.toStringAsFixed(2)}",
                style: TextStyle(
                  fontFamily: "Roboto",
                  color: button_green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Icon(
                productModel.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
