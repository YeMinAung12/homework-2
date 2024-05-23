import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path = Path();
    path.moveTo(width, height * 0.33);
    path.lineTo(width, height - 30);
    path.quadraticBezierTo(width, height, width - 30, height);
    path.lineTo(30, height);
    path.quadraticBezierTo(0, height, 0, height - 30);
    path.lineTo(0, 60);
    path.quadraticBezierTo(0, 0, 60, 30);
    path.lineTo(width - 30, height * 0.33);
    path.quadraticBezierTo(width, height * 0.33, width, height * 0.4 + 60);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path = Path();

    path.lineTo(10, 0);
    path.quadraticBezierTo(0, 0, 0, 10);
    path.lineTo(0, height - 10);
    path.quadraticBezierTo(0, height, 10, height);
    path.lineTo(width * 0.8 - 30, height);
    path.quadraticBezierTo(width, height, width - 25, height * 0.1 - 50);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path = Path();
    path.moveTo(width, height * 0.33);
    path.lineTo(width, height - 30);
    path.quadraticBezierTo(width, height, width - 30, height);
    path.lineTo(30, height);
    path.quadraticBezierTo(0, height, 0, height - 30);
    path.lineTo(0, 60);
    path.quadraticBezierTo(0, 0, 60, 30);
    path.lineTo(width - 30, height * 0.22);
    path.quadraticBezierTo(width, height * 0.22, width, height * 0.22 + 60);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
