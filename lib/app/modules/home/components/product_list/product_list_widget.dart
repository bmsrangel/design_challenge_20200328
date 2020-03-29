import 'package:challenge_20200328/app/modules/home/components/product_card/product_card_widget.dart';
import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  final Future<List<ProductModel>> future;
  const ProductListWidget({Key key, this.future}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: future,
        builder: (_, AsyncSnapshot<List<ProductModel>> snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> filteredProductList =
                snapshot.data.where((prod) => prod.discount == 0).toList();
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, index) => SizedBox(width: 20),
              itemCount: filteredProductList.length,
              itemBuilder: (_, index) {
                return ProductCardWidget(
                  productModel: filteredProductList[index],
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
