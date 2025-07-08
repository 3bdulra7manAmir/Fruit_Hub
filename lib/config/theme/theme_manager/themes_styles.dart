import 'package:flutter/material.dart';
import '../../../core/constants/app_borders.dart';
import '../color_manager/colors.dart';

//------------------------------------------------//
//                 Light THEME                    //
//------------------------------------------------//
abstract class LightThemeStyles
{
  LightThemeStyles._();

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppRadiuses.circular.small,
          side: BorderSide(color: AppColors.color.kTransparent,),),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kGreen001),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
    ),
  );

  static InputDecorationTheme get inputBorder => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.color.kGrey004,
    border: borderLightStyle(),
    enabledBorder: borderLightStyle(),
    disabledBorder: borderLightStyle(),
    errorBorder: borderLightStyle(),
    focusedBorder: borderLightStyle(),
    focusedErrorBorder: borderLightStyle(),
  );

  static OutlineInputBorder borderLightStyle()
  {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.color.kGrey003),
      borderRadius: AppRadiuses.circular.xXXSmall,
    );
  }

  static CardThemeData get cardTheme => const CardThemeData();
  static AppBarTheme get appBarTheme => AppBarTheme(backgroundColor: AppColors.color.kWhite001, surfaceTintColor: AppColors.color.kTransparent);
  static DialogThemeData get dialogTheme => DialogThemeData(
    backgroundColor: AppColors.color.kWhite001,
    shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXSmall,),
  );
  static BottomSheetThemeData get bottomSheetTheme => const BottomSheetThemeData();

}

//------------------------------------------------//
//                  DARK THEME                    //
//------------------------------------------------//
abstract class DarkThemeStyles
{
  DarkThemeStyles._();

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppRadiuses.circular.small,
          side: BorderSide(color: AppColors.color.kTransparent,),),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kGreen001),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
    ),
  );

  static InputDecorationTheme get inputBorder => InputDecorationTheme(border: OutlineInputBorder(borderRadius: AppRadiuses.circular.xSmall,),);
  static CardThemeData get cardTheme => const CardThemeData();
  static AppBarTheme get appBarTheme => const AppBarTheme();
  static DialogThemeData get dialogTheme => const DialogThemeData();
  static BottomSheetThemeData get bottomSheetTheme => const BottomSheetThemeData();
}