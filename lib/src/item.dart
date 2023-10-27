
import 'package:flutter/cupertino.dart';

class navBarItem{
  final String? label;
  final String? route;
  final IconData icon;
  final double? size;
  final Color? color;
  final Function()? onTap;
  const navBarItem({this.label, this.route, required this.icon, this.size, this.color , this.onTap});
}