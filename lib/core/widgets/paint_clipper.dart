import 'package:flutter/widgets.dart';

class OnBoardingWaveClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
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


class OfferWaveClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    final Path path = Path();
    // Start from top-right
    path.moveTo(size.width, 0);
    // Line to top-left (but stop before curve starts)
    path.lineTo(size.width * 0.15, 0);
    // Left inward curve
    path.quadraticBezierTo(
      0, size.height * 0.25,
      0, size.height * 0.5,
    );
    path.quadraticBezierTo(
      0, size.height * 0.75,
      size.width * 0.15, size.height,
    );
    // Line to bottom-right
    path.lineTo(size.width, size.height);
    // Close path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class BottomArcClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    final path = Path();

    // Start from top-left
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.92);

    // Arc-like downward curve at bottom
    path.quadraticBezierTo(
      size.width * 0.5, size.height * 1.05, // control point pushes the curve downward
      size.width, size.height * 0.92, // end point on the bottom-right
    );

    // Line to top-right
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}