import 'dart:io';

class PlatformHelper
{
  PlatformHelper._();
  static final _instance = PlatformHelper._();
  static PlatformHelper get instance => _instance;


  bool isAndroid()
  {
    if(Platform.isAndroid)
    {
      return true;
    }
    else
    {
      return false;
    }
  }

  bool isIOS()
  {
    if(Platform.isIOS)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}