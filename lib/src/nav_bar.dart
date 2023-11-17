import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/src/item.dart';

class UltimateNavBar extends StatelessWidget {
  final List<NavBarItem>? items;
  final Color? backgroundColor;
  final int? barHeight;
  final bool? isFloating;
  final BorderRadius? borderRadiusBar;
  final double? iconsSize;
  final Color? itemsColor;

  const UltimateNavBar({
    Key? key,
    required this.items,
    this.backgroundColor,
    this.barHeight,
    this.iconsSize,
    this.borderRadiusBar,
    this.isFloating,
    this.itemsColor,
  }) : super(key: key);

  generateItems(List<NavBarItem> items) {

    if (items.length > 5) {
      throw Exception('You can\'t have more than 5 items in the navigation bar');
    }

    return items
        .map((item) => InkWell(
              onTap: item.onTap,
              child: SizedBox(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      size: iconsSize ?? 24,
                      color: itemsColor ?? Colors.black,
                    ),
                    if (item.label != null)
                      Text(item.label!,
                          style: TextStyle(color: itemsColor ?? Colors.black))
                  ],
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFloating == true ? EdgeInsets.only(left: 20, right: 20, bottom: 30) : EdgeInsets.all(0),
      height: barHeight?.toDouble() ?? 90,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius:  borderRadiusBar != null && isFloating == true ? borderRadiusBar : BorderRadius.circular(0),
      ),
      child: SafeArea(
        bottom: isFloating == true ? false : true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: generateItems(items!),
        ),
      ),
    );
  }
}
