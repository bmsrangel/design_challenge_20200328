import 'package:challenge_20200328/app/app_module.dart';
import 'package:challenge_20200328/app/modules/home/home_bloc.dart';
import 'package:challenge_20200328/app/modules/product/product_module.dart';
import 'package:challenge_20200328/app/shared/repositories/product_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:challenge_20200328/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => HomePage(
                  repo: AppModule.to.get<ProductRepository>(),
                )),
        Router(
          "/product",
          module: ProductModule(),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
