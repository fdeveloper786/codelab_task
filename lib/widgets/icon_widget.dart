import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  const IconItem({
    Key? key,
    required this.icon,
    this.size = 15.0,
    this.color = CupertinoColors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}