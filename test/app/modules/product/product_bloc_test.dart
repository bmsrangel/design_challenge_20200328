import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:challenge_20200328/app/app_module.dart';
import 'package:challenge_20200328/app/modules/product/product_bloc.dart';
import 'package:challenge_20200328/app/modules/product/product_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ProductModule());
  ProductBloc bloc;

  // setUp(() {
  //     bloc = ProductModule.to.get<ProductBloc>();
  // });

  // group('ProductBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ProductBloc>());
  //   });
  // });
}
