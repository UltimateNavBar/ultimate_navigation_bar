
import 'package:flutter/cupertino.dart';

class navBarItem{
  final String? label;
  final String? route;
  final IconData icon;
  final Function()? onTap;
  const navBarItem({this.label, this.route, required this.icon, this.onTap});
}