import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ultimate_navigation_bar/ultimate_navigation_bar.dart';

void main() {
  testWidgets('UltimateNavBar construction', (WidgetTester tester) async {
    // Build the `UltimateNavBar` widget.
    final navBar = UltimateNavBar(
      items: [
        NavBarItem(icon: Icons.home, label: 'Home'),
        NavBarItem(icon: Icons.search, label: 'Search'),
        NavBarItem(icon: Icons.settings, label: 'Settings'),
      ],
      onChanged: (value) {},
      backgroundColor: Colors.blue,
      gradientColors: [Colors.green, Colors.blue],
      gradientType: GradientType.horizontal,
      barHeight: 80,
      iconsSize: 28.0,
      borderRadiusBar: BorderRadius.circular(20.0),
      isFloating: true,
      itemsColor: Colors.white,
      showIndicator: true,
      currentIndex: 1,
    );

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: navBar)));

    // Verify that the widget is constructed correctly.
    expect(find.byWidget(navBar), findsOneWidget);
    expect(navBar.backgroundColor, equals(Colors.blue));
    expect(navBar.gradientColors, equals([Colors.green, Colors.blue]));
    expect(navBar.gradientType, equals(GradientType.horizontal));
    expect(navBar.barHeight, equals(80));
    expect(navBar.iconsSize, equals(28.0));
    expect(navBar.borderRadiusBar, equals(BorderRadius.circular(20.0)));
    expect(navBar.isFloating, isTrue);
    expect(navBar.itemsColor, equals(Colors.white));
    expect(navBar.showIndicator, isTrue);
    expect(navBar.currentIndex, equals(1));

    // Perform a tap on the first item and verify the onChanged callback
    await tester.tap(find.byIcon(Icons.home));
    await tester.pump();
    // Add specific expectations based on what should happen when an item is tapped
    // For instance, if `onChanged` should change the state and trigger a rebuild,
    // you can check for certain widgets or states to reflect that change.
  });

  testWidgets('UltimateNavBar generateItems', (WidgetTester tester) async {
    // Create a list of navigation items.
    final items = [
      const NavBarItem(icon: Icons.home, label: 'Home'),
      const NavBarItem(icon: Icons.search, label: 'Search'),
      const NavBarItem(icon: Icons.settings, label: 'Settings'),
    ];

    // Generate the items for the `UltimateNavBar` widget.
    final generatedItems = UltimateNavBar(
      items: [],
      onChanged: (int value) {},
    ).generateItems(items);

    // Verify that the items are generated correctly.
    expect(generatedItems.length, 3);
    expect(generatedItems[0], isA<GestureDetector>());
    expect(generatedItems[1], isA<GestureDetector>());
    expect(generatedItems[2], isA<GestureDetector>());
  });
}
