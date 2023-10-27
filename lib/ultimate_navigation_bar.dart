import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/navBarItems.dart';

class ultimateNavBar extends StatelessWidget {
  final List<navBarItem>? items;
  const ultimateNavBar({Key? key, required this.items}) : super(key: key);

  generateItems(List<navBarItem> items){
    return items.map((item) => Container(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, size: item.size ?? 24, color: item.color ?? Colors.black,),
          if (item.label != null) Text(item.label!),
        ],
      ),
    )).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
          generateItems(items!),
      ),
    );
  }
}