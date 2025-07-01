import 'dart:developer';
import 'font_manager_base.dart';
import 'font_manager_roboto.dart';
import 'font_manager_cairo.dart';

class AppFonts
{
  static AppFonts? _instance;

  AppFonts._();

  static AppFonts get i
  {
    _instance ??= AppFonts._();
    return _instance!;
  }

  static FontManagerBase get font
  {
    try
    {
      return i._fonts;
    }
    catch (e, stack)
    {
      log("Erro in get font: $e ,, Stack: $stack");
      return FontRoboto();
    }
  }

  String language = 'en';
  set langCode(String code)
  {
    try
    {
      if (code.isEmpty)
      {
        return;
      }
      language = code.toLowerCase();
    }
    on Exception catch (e, stack)
    {
      log("Erro in font Language: $e ,, Stack: $stack");
    }
  }

  FontManagerBase get _fonts
  {
    try
    {
      if (language == "ar")
      {
        return FontCairo();
      }
      else
      {
        return FontRoboto();
      }
    }
    catch (e, stack)
    {
      log("Erro in font Language: $e ,, Stack: $stack");
      return FontRoboto();
    }
  }
}
