class BackendAuth {
  static String _userToken = "";

  static String getToken() => _userToken;
  static void setToken(String token) {
    _userToken = token;
  }
}
