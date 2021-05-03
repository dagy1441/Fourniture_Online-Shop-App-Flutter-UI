import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourniture_online_shop_app_flutter_ui/models/Product.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/constants.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(
      color: kTextColor.withOpacity(0.6),
    );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      height: defaultSize * 37.5, // 375
      width: defaultSize * 15, // 150
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            product.category.toUpperCase(),
            style: lightTextStyle,
          ),
          SizedBox(height: defaultSize),
          Text(
            product.title,
            style: TextStyle(
              fontSize: defaultSize * 2,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
              height: 1.4,
            ),
          ),
          SizedBox(height: defaultSize * 2),
          Text(
            "Form",
            style: lightTextStyle,
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontSize: defaultSize * 1.6),
          ),
          SizedBox(height: defaultSize * 2),
          Text("Available colors", style: lightTextStyle),
          Row(
            children: [
              buildBoxColor(
                defaultSize,
                color: Color(0xFF7BA275),
                isActif: true,
              ),
              buildBoxColor(
                defaultSize,
                color: Color(0xFFD7D7D7),
              ),
              buildBoxColor(
                defaultSize,
                color: kTextColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildBoxColor(double defaultSize,
      {Color color, bool isActif = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActif ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}
