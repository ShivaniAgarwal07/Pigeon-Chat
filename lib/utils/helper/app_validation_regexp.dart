//Validation RegExp used in the App.

class AppValidationRegexp {
  //email validation pattern
  static const String emailRegExp =
      r"^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$";

  //name validation pattern
  static const String nameRegExp = r"^[a-zA-Z]+ [a-zA-Z]+$";
  // r"^(?!\s)[a-zA-z]";

  //name validation pattern
  static const String mobileRegExp = r"^(?:[+0]9)?[0-9]{6,10}$";

  //password validation pattern
  static const String passwordRegExp =
      r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$";
  static RegExp upperCaseAlphabets = RegExp(r"[A-Z]");
  static RegExp lowerCaseAlphabets = RegExp(r"[a-z]");
  static RegExp noDigits = RegExp(r"[0-9]");
  static RegExp punctuation = RegExp(r"[!@#\$&*~-]");
  static RegExp specialCharacter = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  //Number only RegExp
  static RegExp charactersOnly = RegExp(r"[a-zA-Z ]");
}
