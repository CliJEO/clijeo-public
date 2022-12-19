class ApiUtils {
  // For Login via passing google auth ID token
  static const String loginUrl = '/user/login';

  // For getting user data including queries
  static const String userUrl = '/user/me';

  // For updating user data
  static const String userUpdateUrl = '/user/update';

  // //Set event results
  // static String getAddEventResultsUrl(int eventID) =>
  //     '/events/$eventID/setresults';

}
