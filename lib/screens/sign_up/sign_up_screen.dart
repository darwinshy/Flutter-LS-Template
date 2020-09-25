import '../sign_up/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign Up"),
        ),
        body: PageView(
          physics: new NeverScrollableScrollPhysics(),
          controller: controller,
          children: [Body(controller), BodyProfile()],
        ));
  }
}
