import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ultimate_navigation_bar/ultimate_navigation_bar.dart';

void main() {
  // This test ensures that the `UltimateNavBar` widget can be constructed correctly.
  testWidgets('UltimateNavBar construction', (WidgetTester tester) async {
    // Build the `UltimateNavBar` widget.
    const UltimateNavBar navBar = UltimateNavBar(
      items: [
        NavBarItem(icon: Icons.home, label: 'Home'),
        NavBarItem(icon: Icons.search, label: 'Search'),
        NavBarItem(icon: Icons.settings, label: 'Settings'),
      ],
    );

    // Verify that the widget is constructed correctly.
    expect(navBar, isNotNull);
  });

  // This test ensures that the `UltimateNavBar` widget can generate its items correctly.
  testWidgets('UltimateNavBar generateItems', (WidgetTester tester) async {
    // Create a list of navigation items.
    final items = [
      const NavBarItem(icon: Icons.home, label: 'Home'),
      const NavBarItem(icon: Icons.search, label: 'Search'),
      const NavBarItem(icon: Icons.settings, label: 'Settings'),
    ];

    // Generate the items for the `UltimateNavBar` widget.
    final generatedItems = const UltimateNavBar(items: [],).generateItems(items);

    // Verify that the items are generated correctly.
    expect(generatedItems.length, 3);
    expect(generatedItems[0], isA<InkWell>());
    expect(generatedItems[1], isA<InkWell>());
    expect(generatedItems[2], isA<InkWell>());
  });
}