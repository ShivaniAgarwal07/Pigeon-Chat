import 'package:chat_application/utils/helper/app_integers.dart';
import 'package:chat_application/utils/helper/app_strings.dart';
import 'package:chat_application/utils/helper/app_validation_regexp.dart';

class AppValidator {
  //Email Validator
  static String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return AppStrings.required;
    } else if (!RegExp(AppValidationRegexp.emailRegExp)
        .hasMatch(email.trim())) {
      return AppStrings.invalidEmail;
    }
    return null;
  }

  //Name Validator
  static String? validateName(String? name) {
    final RegExp _nameRegExp = RegExp(AppValidationRegexp.nameRegExp);
    if (name!.isEmpty) {
      return AppStrings.required;
    } else if (name[0] == ' ') {
      return AppStrings.noSpace;
    } else if (!_nameRegExp.hasMatch(name)) {
      return AppStrings.invalidName;
    }
    return null;
  }

  //Number Validator
  static String? validateNumber(String? number) {
    if (number!.isNotEmpty) {
      if (number.length < AppIntegers.minimumNumberLength) {
        return AppStrings.minimumMobileNumber;
      } else if (!RegExp(AppValidationRegexp.mobileRegExp)
          .hasMatch(number.trim())) {
        return AppStrings.validNumber;
      }
    }
    return null;
  }

  //Password Validator
  static String? validatePassword(String? password) {
    if (password!.isEmpty) {
      return AppStrings.required;
    } else if (!RegExp(r'.{6,}').hasMatch(password)) {
      return AppStrings.lengthOfPassword;
    } else if (!AppValidationRegexp.upperCaseAlphabets.hasMatch(password)) {
      return AppStrings.uppercasePassword;
    } else if (!AppValidationRegexp.lowerCaseAlphabets.hasMatch(password)) {
      return AppStrings.lowercasePassword;
    } else if (!AppValidationRegexp.noDigits.hasMatch(password)) {
      return AppStrings.onedigitPassword;
    } else if (!AppValidationRegexp.punctuation.hasMatch(password)) {
      return AppStrings.specialCharacterPassword;
    }
    return null;
  }

  static String? validateConfirmPassword(String? val) {
    String _value = val ?? '';
    if (_value.isEmpty) {
      return AppStrings.required;
    }
    return null;
  }
}
