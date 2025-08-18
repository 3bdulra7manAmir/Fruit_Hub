import 'shared_pref_initialization.dart';

class SharedPrefManager
{
  SharedPrefManager._internal();
  factory SharedPrefManager() => _instance;
  static final SharedPrefManager _instance = SharedPrefManager._internal();

  ///[Theme_KEY]
  static const String _themeKey = 'theme_mode'; // 'light' or 'dark'
  ///[Local_KEY]
  static const String _localeKey = 'locale_lang'; // 'en' or 'ar'
  ///[Token_KEY]
  //static const String _tokenKey = 'auth_token';

  /// [Theme]
  String get themeMode => SharedPrefInit.prefs.getString(_themeKey) ?? 'light';
  Future<void> setThemeMode(String mode) => SharedPrefInit.prefs.setString(_themeKey, mode);

  /// [Localization]
  String get localeLang => SharedPrefInit.prefs.getString(_localeKey) ?? 'ar';
  Future<void> setLocaleLang(String lang) => SharedPrefInit.prefs.setString(_localeKey, lang);

  /// [TOKEN]
  // String? get token => SharedPrefInit.prefs.getString(_tokenKey);
  // Future<void> setToken(String token) => SharedPrefInit.prefs.setString(_tokenKey, token);
  // Future<void> clearToken() => SharedPrefInit.prefs.remove(_tokenKey);
  
}
