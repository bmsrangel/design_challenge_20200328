import 'package:challenge_20200328/app/modules/home/components/app_bar/app_bar_widget.dart';
import 'package:challenge_20200328/app/modules/home/components/best_deals/best_deals_widget.dart';
import 'package:challenge_20200328/app/modules/home/components/category_list/category_list_widget.dart';
import 'package:challenge_20200328/app/modules/home/components/category_title/category_title_widget.dart';
import 'package:challenge_20200328/app/modules/home/components/popular_suggested_selection/popular_suggested_selection_widget.dart';
import 'package:challenge_20200328/app/modules/home/components/product_list/product_list_widget.dart';
import 'package:challenge_20200328/app/shared/repositories/product_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  final ProductRepository repo;
  const HomePage({Key key, this.title = "Home", this.repo}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarWidget(),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CategoryTitleWidget(title: "Perfume"),
            SizedBox(height: 25),
            CategoryListWidget(future: widget.repo.getCategories()),
            SizedBox(height: 25),
            Container(
              child: Expanded(
                child: Row(
                  children: <Widget>[
                    PopularSuggestedSelectionWidget(),
                    ProductListWidget(future: widget.repo.getProducts()),
                  ],
                ),
              ),
            ),
            BestDealsWidget(),
          ],
        ),
      ),
    );
  }
}
