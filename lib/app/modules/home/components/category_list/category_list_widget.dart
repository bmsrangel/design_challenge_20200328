import 'package:challenge_20200328/app/modules/home/components/category_button/category_button_widget.dart';
import 'package:challenge_20200328/app/shared/models/category_model.dart';
import 'package:challenge_20200328/app/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  final Future<List<CategoryModel>> future;
  const CategoryListWidget({Key key, this.future}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (_, AsyncSnapshot<List<CategoryModel>> snapshot) {
        if (snapshot.hasData)
          return Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  RotatedBox(
                    child: InkWell(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: button_green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.tune,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                    quarterTurns: 3,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data.length,
                        itemBuilder: (_, index) {
                          return Container(
                            child: CategoryButtonWidget(
                                title:
                                    snapshot.data[index].title.toUpperCase()),
                          );
                        }),
                  ),
                ],
              ));
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
