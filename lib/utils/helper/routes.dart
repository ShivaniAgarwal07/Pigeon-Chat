import 'package:chat_application/screens/chat/chat_screen.dart';
import 'package:chat_application/screens/sign_in/sign_in_screen.dart';
import 'package:chat_application/screens/sign_up/sign_up_screen.dart';
import 'package:chat_application/screens/signin_signup_selection/selection_screen.dart';
import 'package:chat_application/wrong_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String selectionScreenRoute = '/selection';
  static const String signInScreenRoute = '/signIn';
  static const String signUpScreenRoute = '/signUp';
  static const String chats = '/chats';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case selectionScreenRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SelectionScreen(),
        );
      case signInScreenRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SignInScreen(),
        );
      case signUpScreenRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SignUpScreen(),
        );
      case chats:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const Chats(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const WrongScreen(),
        );
    }
  }
}
