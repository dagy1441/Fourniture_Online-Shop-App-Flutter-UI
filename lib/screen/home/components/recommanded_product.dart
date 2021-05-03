import 'package:flutter/material.dart';
import 'package:fourniture_online_shop_app_flutter_ui/models/Product.dart';
import 'package:fourniture_online_shop_app_flutter_ui/screen/details/details_screen.dart';
import 'package:fourniture_online_shop_app_flutter_ui/screen/home/components/product_card.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class RecommandedProducts extends StatelessWidget {
  const RecommandedProducts({
    Key key,
    this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Padding(
      padding: EdgeInsets.all(defaultSize * 2), //20
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
          doPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  product: products[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
