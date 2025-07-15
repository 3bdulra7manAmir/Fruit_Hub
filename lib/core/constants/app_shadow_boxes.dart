import 'package:flutter/material.dart';

abstract class AppShadowBoxes
{
  AppShadowBoxes._();

  static BoxShadow get searchBar => BoxShadow(
    color: Color(0x0A000000),
    offset: Offset(0, 2),
    blurRadius: 9,
    );
  
  static BoxShadow get noSearchResults => BoxShadow(
    color: Color(0x0F000000),
    blurRadius: 12,);
  
  static BoxShadow get commentField => BoxShadow(
    color: Color(0x40E9E9E9),
    offset: Offset(0, 15),
    blurRadius: 45,
    spreadRadius: 20,
  );
  
}