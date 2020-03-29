import 'package:challenge_20200328/app/shared/models/category_model.dart';
import 'package:challenge_20200328/app/shared/models/product_model.dart';
import 'package:challenge_20200328/app/utils/category_list.dart';
import 'package:challenge_20200328/app/utils/product_list.dart';

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    await Future.delayed(Duration(seconds: 1));
    return productList.map((product) => ProductModel.fromMap(product)).toList();
  }

  Future<List<CategoryModel>> getCategories() async {
    await Future.delayed(Duration(milliseconds: 500));
    return categoryList
        .map((category) => CategoryModel.fromMap(category))
        .toList();
  }
}
