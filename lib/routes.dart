import 'package:TechFests/screens/forget_password/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'screens/sign_in/signInScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen()
};
