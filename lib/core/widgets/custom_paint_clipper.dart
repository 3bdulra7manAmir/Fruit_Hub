import 'package:flutter/widgets.dart';

class OnBoardingWaveClipper extends CustomClipper<Path>
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


class OfferWaveClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    final Path path = Path();
    // Start from top-left
    path.moveTo(0, 0);
    // Line to top-right
    path.lineTo(size.width * 0.85, 0);
    // Right curve (inward wave)
    path.quadraticBezierTo(
      size.width, size.height * 0.25,
      size.width, size.height * 0.5,
    );
    path.quadraticBezierTo(
      size.width, size.height * 0.75,
      size.width * 0.85, size.height,
    );
    // Line to bottom-left
    path.lineTo(0, size.height);
    // Close path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
