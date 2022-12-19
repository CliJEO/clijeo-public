class ApiUtils {
  // For Login via passing google auth ID token
  static const String loginUrl = '/user/login';

  // For getting user data including queries
  static const String userUrl = '/user/me';

  // For updating user data
  static const String userProfileUpdateUrl = '/user/update';

  // For creating a new query
  static const String createQueryUrl = '/query/create';

  // //Set event results
  // static String getAddEventResultsUrl(int eventID) =>
  //     '/events/$eventID/setresults';

}
