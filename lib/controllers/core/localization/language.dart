import 'package:clijeo_public/view/core/constants.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';

class Language {
  // Currently selected language
  static String _currentLanguageCode = Constants.getSupportedLanguages().first;

  static void setCurrentLanguageCode(String languageCode) {
    _currentLanguageCode = languageCode;
  }

  static Future<void> setCurrentLanguageCodeAndUpdateSharedPref(
      String languageCode) async {
    _currentLanguageCode = languageCode;
    await ClijeoSharedPref.addLanguageToSharedPref(languageCode);
  }

  static String getCurrentLanguageCode() => _currentLanguageCode;
}
