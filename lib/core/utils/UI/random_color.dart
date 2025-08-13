import 'dart:math';
import 'package:flutter/material.dart';


Color getRandomColor()
{
  final List<Color> colors =
  [
    const Color(0xFFF3F4F6),
    const Color(0xFFE77F82),
    const Color(0xFFE5CFC4),
    const Color(0xFF736D97),
    const Color(0xFF68B6D5),
  ];

  final random = Random();
  return colors[random.nextInt(colors.length)];
}

