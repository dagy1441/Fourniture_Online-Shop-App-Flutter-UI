import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/constants.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

import 'package:splashy_bottom_app_bar/splashy_bottom_app_bar.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  List<NavigatorItem> items = [
    NavigatorItem(Icon(Icons.home_outlined), Text("Home")),
    NavigatorItem(Icon(Icons.search), Text("Search")),
    NavigatorItem(Icon(Icons.shopping_bag_outlined), Text("Bag")),
    NavigatorItem(Icon(Icons.person_outline), Text("Profile")),
  ];

  Widget _buildItem(NavigatorItem item, bool isSelected) {
    return Container(
      height: double.maxFinite,
      width: isSelected ? 120 : 50,
      decoration: isSelected
          ? BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            )
          : null,
      child: Row(
        children: [
          IconTheme(
            data: IconThemeData(size: 25),
            child: item.icon,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: isSelected ? item.title : Container(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        //color: Colors.amber,
        child: Padding(
          padding: EdgeInsets.only(left: 38, right: 38, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.map((item) {
              var itemIndex = items.indexOf(item);
              return GestureDetector(
                child: _buildItem(item, selectedIndex == itemIndex),
                onTap: () {
                  setState(() {
                    selectedIndex = itemIndex;
                  });
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class NavigatorItem {
  final Icon icon;
  final Text title;

  NavigatorItem(this.icon, this.title);
}
