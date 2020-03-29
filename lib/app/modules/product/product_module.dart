import 'package:challenge_20200328/app/modules/product/product_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:challenge_20200328/app/modules/product/product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => ProductPage(
                  product: args.data,
                )),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
