import 'package:evaluation_task_flutter/size_config.dart';
import 'package:evaluation_task_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ProductManager _productManager = sl<ProductManager>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // image slider banner
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return bannerImageSlider();
              } else {
                return bannerImageSlider(height: 54);
              }
            },
          ),

          // top categorized products listview
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return ProductCategorizedListViewHorizontal(
                  title: 'Top Products',
                  subtitle: 'View More',
                  category: 'top products',
                );
              } else {
                return ProductCategorizedListViewHorizontal(
                  height: SizeConfig.blockSizeVertical * 56,
                  title: 'Top Products',
                  subtitle: 'View More',
                  category: 'top products',
                );
              }
            },
          ),

          // trending products listview
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return ProductCategorizedListViewHorizontal(
                  title: 'Trending',
                  subtitle: 'View More',
                  category: 'trending',
                );
              } else {
                return ProductCategorizedListViewHorizontal(
                  height: SizeConfig.blockSizeVertical * 56,
                  title: 'Trending',
                  subtitle: 'View More',
                  category: 'trending',
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
