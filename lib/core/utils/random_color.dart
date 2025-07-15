import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor()
{
  final List<Color> colors =
  [
    Color(0xFFF3F4F6),
    Color(0xFFE77F82),
    Color(0xFFE5CFC4),
    Color(0xFF736D97),
    Color(0xFF68B6D5),
  ];

  final random = Random();
  return colors[random.nextInt(colors.length)];
}
