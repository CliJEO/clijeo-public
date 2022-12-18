class Language {
  // List of all supported languages
  static const List<String> _supportedLanguages = ["en", "ml"];

  // Currently selected language
  static String _currentLanguageCode = _supportedLanguages.first;

  static List<String> getSupportedLanguages() => _supportedLanguages;

  static void setCurrentLanguageCode(String languageCode) {
    _currentLanguageCode = languageCode;
  }

  static String getCurrentLanguageCode() => _currentLanguageCode;
}
