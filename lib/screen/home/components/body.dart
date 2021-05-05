import 'package:flutter/material.dart';
import 'package:fourniture_online_shop_app_flutter_ui/components/text_title.dart';
import 'package:fourniture_online_shop_app_flutter_ui/screen/home/components/bottom_navigation.dart';
import 'package:fourniture_online_shop_app_flutter_ui/screen/home/components/recommanded_product.dart';
import 'package:fourniture_online_shop_app_flutter_ui/services/fetchCategories.dart';
import 'package:fourniture_online_shop_app_flutter_ui/services/fetchProducts.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

import 'package:splashy_bottom_app_bar/splashy_bottom_app_bar.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: TextTitle(
                title: "Browse by categories",
              ),
            ),
            //it means we have to add category
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data)
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: TextTitle(
                title: "Recommands for you",
              ),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? RecommandedProducts(products: snapshot.data)
                    : Center(child: Image.asset('assets/ripple.gif'));
              },
            ),
            BottomNavigation()
          ],
        ),
      ),
    );
  }
}
