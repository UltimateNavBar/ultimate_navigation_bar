import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/src/item.dart';

enum GradientType {
  horizontal,
  vertical,
}

class UltimateNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final Color? backgroundColor;
  final List<Color>? gradientColors;
  final GradientType? gradientType;
  final int? barHeight;
  final bool? isFloating;
  final BorderRadius? borderRadiusBar;
  final double? iconsSize;
  final Color? itemsColor;
  final bool? showIndicator;
  final int? currentIndex;

  /// ! THIS WILL IDENTITFY WHICH TAB IS CURRENTLY ACTIVE
  /// ! USING THIS TO SHOW AND HIDE TAB INDICATOR
  static ValueNotifier<int> notifyIndex = ValueNotifier<int>(0);
  static double height = 100;

  const UltimateNavBar({
    Key? key,
    required this.items,
    this.backgroundColor,
    this.gradientColors,
    this.gradientType,
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


    if (items.length > 5) {
      throw Exception(
          'You can\'t have more than 5 items in the navigation bar');
    }

    return items
        .map((item) => GestureDetector(
              onTap: () => {onPressed(items.indexOf(item)), item.onTap},
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: orientation,
                  children: [
                    Icon(
                      item.icon,
                      size: iconsSize ?? 30,
                      color: itemsColor ?? Colors.black,
                    ),
                    if (item.label != null)
                      Text(item.label!,
                          style: TextStyle(color: itemsColor ?? Colors.black)),
                    Spacer(),
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
                            );
                          })
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }

  double calculateHeight() {
    if(barHeight == null && iconsSize == null) {
      return height = 70;
    }else if(barHeight == null && iconsSize != null) {
      return height = (iconsSize! * 100)/30;
    }else{
      return height = barHeight!.toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFloating == true
          ? const EdgeInsets.only(left: 20, right: 20, bottom: 30)
          : const EdgeInsets.all(0),
      height: calculateHeight() ,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.blue,
          gradient: gradientColors != null
              ? LinearGradient(
                  colors: gradientColors!,
                  begin: gradientType == GradientType.horizontal
                      ? Alignment.centerLeft
                      : Alignment.topCenter,
                  end: gradientType == GradientType.horizontal
                      ? Alignment.centerRight
                      : Alignment.bottomCenter,
                )
              : null,
          borderRadius: borderRadiusBar != null && isFloating == true
              ? borderRadiusBar
              : BorderRadius.circular(0),
          boxShadow: isFloating == true
              ? [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4.0,
                    offset: Offset(2.0, 2.0),
                  )
                ]
              : null),
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
    notifyIndex.value = index;
  }
}
