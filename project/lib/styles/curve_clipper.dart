import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  CurveClipper();

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    final Path path = Path();

    path.lineTo(0, 0); // top left corner
    path.lineTo(0, height); // bottom left corner
    path.quadraticBezierTo(
      width / 2,
      height - height / 6,
      width,
      height,
    ); // bottom curve to bottom right corner
    path.lineTo(width, 0); // top right corner
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
