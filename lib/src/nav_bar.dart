import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/src/item.dart';

class UltimateNavBar extends StatelessWidget {
  final List<NavBarItem>? items;
  final Color? backgroundColor;
  final int? barHeight;
  final EdgeInsets? marginBar;
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
    this.marginBar,
    this.itemsColor,
  }) : super(key: key);

  generateItems(List<NavBarItem> items) {
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
      margin: marginBar ?? EdgeInsets.all(0),
      height: barHeight?.toDouble() ?? 90,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius:  borderRadiusBar ?? BorderRadius.circular(0),
      ),
      child: SafeArea(
        bottom: marginBar != null ? false : true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: generateItems(items!),
        ),
      ),
    );
  }
}
