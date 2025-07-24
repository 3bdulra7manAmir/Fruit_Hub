import 'package:flutter/material.dart';

abstract class AppShadowBoxes
{
  AppShadowBoxes._();

  static BoxShadow get searchBar => const BoxShadow(
    color: Color(0x0A000000),
    offset: Offset(0, 2),
    blurRadius: 9,
    );
  
  static BoxShadow get noSearchResults => const BoxShadow(
    color: Color(0x0F000000),
    blurRadius: 12,);
  
  static BoxShadow get commentField => const BoxShadow(
    color: Color(0x40E9E9E9),
    offset: Offset(0, 15),
    blurRadius: 45,
    spreadRadius: 20,
  );

  static BoxShadow get userImg => const BoxShadow(
    color: Color(0x80FFC529),
    blurRadius: 6.84,
    spreadRadius: 13.67,
  );

  
}