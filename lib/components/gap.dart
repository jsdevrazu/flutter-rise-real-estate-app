import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final bool isWidth;
  final bool isHeight;
  final double width, height;

  const Gap({
    Key? key,
    required this.isWidth,
    required this.isHeight,
    this.width = 0.0,
    this.height = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isWidth ? width : 0.0,
      height: isHeight ? height : 0.0,
    );
  }
}
