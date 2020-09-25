import 'package:flutter/material.dart';

import 'body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const routeName = "/forgetPassword";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
