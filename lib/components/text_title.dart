import 'package:flutter/material.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
