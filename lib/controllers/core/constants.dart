class Constants {
  // List of all supported languages
  static List<String> getSupportedLanguages() => ["en", "ml"];

  // List of all genders
  static List<String> getAllGenders() => ["male", "female", "other"];
}

enum RecognizedFileTypes { image, video, audio, document }
