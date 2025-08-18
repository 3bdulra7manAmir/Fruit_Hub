import '../../../core/utils/logger/app_logger.dart';

import 'font_manager_base.dart';
import 'font_manager_cairo.dart';
import 'font_manager_roboto.dart';

class AppFonts
{

  AppFonts._();
  static AppFonts? _instance;

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
    catch (error, stack)
    {
      AppLogger.error('Erro in get font: $error ,, Stack: $stack');
      return FontRoboto();
    }
  }

  String language = 'ar';
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
    on Exception catch (error, stack)
    {
      AppLogger.error('Erro in font Language: $error ,, Stack: $stack');
    }
  }

  FontManagerBase get _fonts
  {
    try
    {
      if (language == 'ar')
      {
        return FontCairo();
      }
      else
      {
        return FontCairo();
        //return FontRoboto(); // IF U WANNA USE A FONT FOR "EN" AND ANOTHER FOR "AR"
      }
    }
    catch (error, stack)
    {
      AppLogger.error('Erro in font Language: $error ,, Stack: $stack');
      return FontRoboto();
    }
  }
}
