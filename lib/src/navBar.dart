import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/src/item.dart';

class ultimateNavBar extends StatelessWidget {
  final List<navBarItem>? items;
  final Color? backgroundColor;
  final int? barHeight;
  final double? iconsSize;
  final Color? itemsColor;

  const ultimateNavBar({
    Key? key,
    required this.items,
    this.backgroundColor,
    this.barHeight,
    this.iconsSize,
    this.itemsColor,
  }) : super(key: key);

  generateItems(List<navBarItem> items){
    return items.map((item) => InkWell(
      child: Container(
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, size: iconsSize ?? 24, color: itemsColor ?? Colors.black,),
            if (item.label != null) Text(item.label!),
          ],
        ),
      ),
      onTap: item.onTap,
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight?.toDouble() ?? 90,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
          generateItems(items!),
        ),
      ),
    );
  }
}