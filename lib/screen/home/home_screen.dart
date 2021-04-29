import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourniture_online_shop_app_flutter_ui/models/Categories.dart';
import 'package:fourniture_online_shop_app_flutter_ui/screen/home/components/body.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/constants.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: SizeConfig.defaultSize * 2.4,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: SizeConfig.defaultSize * 2.4,
          ),
          onPressed: () {},
        ),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        ),
      ],
    );
  }
}
