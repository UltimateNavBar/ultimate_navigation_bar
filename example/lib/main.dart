import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
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
        appBar: AppBar(
          title: const Text('Ultimate Navigation Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ultimate Navigation Bar',
              ),
            ],
          ),
        ),
        bottomNavigationBar: UltimateNavBar(
          backgroundColor: Colors.grey.shade500,
          itemsColor: Colors.white,
          iconsSize: 30,
          items:[
            NavBarItem(
              label: 'Home',
              icon: Icons.search,
              onTap: () {
                print('tapped');
              }
            ),
            NavBarItem(
              label: 'Search',
                icon: Icons.search,
                onTap: () {
                  print('tapped');
                }
            ),
            NavBarItem(
              label: 'Profile',
                icon: Icons.search,
                onTap: () {
                  print('tapped');
                }
            ),
          ]
        ),
      ),
    );
  }
}
