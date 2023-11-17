import 'package:flutter/material.dart';
import 'package:ultimate_navigation_bar/ultimate_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: const Text('Ultimate Navigation Bar'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ultimate Navigation Bar',
              ),
            ],
          ),
        ),
        bottomNavigationBar: UltimateNavBar(
            backgroundColor: Colors.blue.shade500,
            itemsColor: Colors.white,
            isFloating: true,
            iconsSize: 30,
            alignmentItems: TextAlign.start,
            borderRadiusBar: BorderRadius.circular(80),
            items: [
              NavBarItem(
                  label: 'Search',
                  icon: Icons.search,
                  onTap: () {
                    print('tapped');
                  }),
              NavBarItem(
                  label: 'Profile',
                  icon: Icons.person,
                  onTap: () {
                    print('tapped');
                  }),
              NavBarItem(
                  label: 'Profile',
                  icon: Icons.person,
                  onTap: () {
                    print('tapped');
                  }),
            ]),
      ),
    );
  }
}
