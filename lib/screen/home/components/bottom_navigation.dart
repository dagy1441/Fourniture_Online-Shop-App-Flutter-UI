import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/constants.dart';
import 'package:fourniture_online_shop_app_flutter_ui/utils/size_config.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  List<NavigatorItem> items = [
    NavigatorItem(Icon(Icons.home), Text("Home"), kPrimaryColor),
    NavigatorItem(Icon(Icons.search), Text("Search"), Colors.pinkAccent),
    NavigatorItem(Icon(Icons.shopping_bag), Text("Bag"), Colors.amberAccent),
    NavigatorItem(Icon(Icons.person), Text("Profile"), Colors.cyanAccent),
  ];

  Widget _buildItem(NavigatorItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 270),
      padding: isSelected ? EdgeInsets.only(left: 16, right: 16) : null,
      height: double.maxFinite,
      width: isSelected ? 125 : 50,
      decoration: isSelected
          ? BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            )
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconTheme(
                data: IconThemeData(
                    size: 25,
                    color: isSelected ? kSecondaryColor : Colors.black),
                child: item.icon,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: isSelected
                    ? DefaultTextStyle(
                        style: TextStyle(color: Colors.white),
                        child: item.title)
                    : Container(),
              ),
            ],
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
        padding: EdgeInsets.only(
          top: 4,
          right: 8,
          bottom: 4,
          left: 8,
        ),
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
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            // BoxShadow(
            //   color: Colors.black12,
            //   blurRadius: 4,
            // ),
          ],
        ),
      ),
    );
  }
}

class NavigatorItem {
  final Icon icon;
  final Text title;
  final Color color;

  NavigatorItem(this.icon, this.title, this.color);
}
