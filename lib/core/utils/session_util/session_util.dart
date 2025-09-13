var isLoggedIn = false;

class SessionUtil {
  static bool getIsLoggedIn() {
    final retrievedStatus = isLoggedIn;
    return retrievedStatus;
  }

  static Future<bool> setIsLoggedIn(bool status) async {
    isLoggedIn = status;
    return isLoggedIn;
  }
}
