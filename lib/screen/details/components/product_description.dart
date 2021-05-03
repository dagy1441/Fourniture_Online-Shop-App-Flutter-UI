import 'package:flutter/material.dart';
import 'package:fourniture_online_shop_app_flutter_ui/models/Product.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/constants.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.doPress,
  }) : super(key: key);

  final Product product;
  final Function doPress;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      minimumSize: Size(88, 44),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      backgroundColor: kPrimaryColor,
    );
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9,
        right: defaultSize * 2,
        left: defaultSize * 2,
      ),
      // height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.4),
          topRight: Radius.circular(defaultSize * 1.4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(
              fontSize: defaultSize * 1.8,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: defaultSize * 3),
          Text(
            product.description,
            style: TextStyle(
              height: 1.4,
              color: kTextColor.withOpacity(0.7),
              fontSize: defaultSize * 1.5,
            ),
          ),
          SizedBox(height: defaultSize * 3),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: flatButtonStyle,
              onPressed: doPress,
              child: Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: defaultSize * 1.6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
