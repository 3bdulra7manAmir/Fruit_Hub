import 'package:flutter/widgets.dart';

class WaveClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height * 0.95); // start bottom-left

    // flipped wave: right side goes up instead of left
    path.quadraticBezierTo(
      size.width * 0.25, size.height * 0.85,
      size.width * 0.5, size.height * 0.9,
    );

    path.quadraticBezierTo(
      size.width * 0.75, size.height * 0.95,
      size.width, size.height * 0.85,
    );

    path.lineTo(size.width, 0); // top-right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
