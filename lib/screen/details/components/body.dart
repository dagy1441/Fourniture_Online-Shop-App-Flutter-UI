import 'package:flutter/material.dart';
import 'package:fourniture_online_shop_app_flutter_ui/models/Product.dart';
import 'product_info.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductInfo(
            product: product,
          ),
        ],
      ),
    );
  }
}
