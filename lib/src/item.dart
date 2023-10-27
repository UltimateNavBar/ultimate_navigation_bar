
import 'package:flutter/cupertino.dart';

class NavBarItem{
  final String? label;
  final String? route;
  final IconData icon;
  final Function()? onTap;
  const NavBarItem({this.label, this.route, required this.icon, this.onTap});
}