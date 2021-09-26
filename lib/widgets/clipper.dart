import 'package:flutter/cupertino.dart';
import 'package:uidesign04/core/color.dart';

class CustomMenuClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = white;
    final w = size.width;
    final h = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(w - 1, h / 2 - 20, w, h / 2);
    path.quadraticBezierTo(w + 1, h / 2 + 20, 10, h - 16);
    path.quadraticBezierTo(0, h - 8, 0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
