import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/src/item.dart';

class UltimateNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final Color? backgroundColor;
  final int? barHeight;
  final bool? isFloating;
  final BorderRadius? borderRadiusBar;
  final double? iconsSize;
  final Color? itemsColor;
  final bool? showIndicator;
  final int? currentIndex;
  final ValueChanged<int> onChanged;

  /// ! THIS WILL IDENTITFY WHICH TAB IS CURRENTLY ACTIVE
  /// ! USING THIS TO SHOW AND HIDE TAB INDICATOR
  static ValueNotifier<int> notifyIndex = ValueNotifier<int>(0);

  const UltimateNavBar({
    Key? key,
    required this.items,
    required this.onChanged,
    this.backgroundColor,
    this.barHeight,
    this.iconsSize,
    this.borderRadiusBar,
    this.isFloating,
    this.itemsColor,
    this.showIndicator,
    this.currentIndex,
  })  : assert(
          (items.length < 6),
          "NavBar items can't contain more than 5 items",
        ),
        super(key: key);

  generateItems(List<NavBarItem> items) {
    final CrossAxisAlignment orientation;


    if (items.length > 5) {
      throw Exception(
          'You can\'t have more than 5 items in the navigation bar');
    }

    return items
        .map((item) => GestureDetector(
              onTap: () => {onPressed(items.indexOf(item)), item.onTap},
              child: SizedBox(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      size: iconsSize ?? 24,
                      color: itemsColor ?? Colors.black,
                    ),
                    (item.label != null)
                      ? Text(item.label!,
                          style: TextStyle(color: itemsColor ?? Colors.black))
                      :Spacer(),
                    ValueListenableBuilder(
                        valueListenable: notifyIndex,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Visibility(
                            visible: showIndicator!,
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: value == items.indexOf(item)
                                    ? itemsColor
                                    : Colors.transparent,
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFloating == true
          ? EdgeInsets.only(left: 20, right: 20, bottom: 30)
          : EdgeInsets.all(0),
      height: barHeight?.toDouble() ?? 90,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: borderRadiusBar != null && isFloating == true
            ? borderRadiusBar
            : BorderRadius.circular(0),
      ),
      child: SafeArea(
        bottom: isFloating == true ? false : true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: generateItems(items),
        ),
      ),
    );
  }

  void onPressed(int index) {
    onChanged(index);
    notifyIndex.value = index;
  }
}
