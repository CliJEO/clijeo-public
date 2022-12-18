import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/localization/language.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClijeoSharedPref {
  static SharedPreferences? _sharedPreferences;

  static const String userTokenKey = "userToken";

  static const String languageTokenKey = "language";

  static Future<void> _instantiateSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<String?> _getUserAccessTokenFromSharedPref() async {
    if (_sharedPreferences == null) await _instantiateSharedPref();
    return _sharedPreferences!.getString(userTokenKey);
  }

  static Future<void> _addUserAccessTokenToSharedPref(String token) async {
    if (_sharedPreferences == null) await _instantiateSharedPref();
    await _sharedPreferences!.setString(userTokenKey, token);
  }

  static Future<String?> _getLanguageFromSharedPref() async {
    if (_sharedPreferences == null) await _instantiateSharedPref();
    return _sharedPreferences!.getString(languageTokenKey);
  }

  static Future<void> _addLanguageToSharedPref(String languageCode) async {
    if (_sharedPreferences == null) await _instantiateSharedPref();
    await _sharedPreferences!.setString(languageTokenKey, languageCode);
  }

  // Load all shared Preferences to app
  static Future<void> loadSharedPrefToApp() async {
    if (_sharedPreferences == null) await _instantiateSharedPref();

    final userToken = await _getUserAccessTokenFromSharedPref();
    if (userToken != null) {
      BackendAuth.setToken(userToken);
    } else {
      await _addUserAccessTokenToSharedPref("");
    }

    final languageCode = await _getLanguageFromSharedPref();
    if (languageCode != null) {
      Language.setCurrentLanguageCode(languageCode);
    } else {
      await _addLanguageToSharedPref(Language.getSupportedLanguages().first);
    }
  }
}
