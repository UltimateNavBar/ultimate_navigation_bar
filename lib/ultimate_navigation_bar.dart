import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/navBarItems.dart';

class ultimateNavBar extends StatelessWidget {
  final List<navBarItem>? items;
  const ultimateNavBar({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var item in items!)
             Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item.icon),
                    Text(item.label!),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}