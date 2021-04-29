import 'package:flutter/material.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTitle(),
          ],
        ),
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      "Browse by Category",
      style: TextStyle(
        fontSize: SizeConfig.defaultSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
