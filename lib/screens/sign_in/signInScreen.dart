import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../size_config.dart';
import '../../theme.dart';
import 'body.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = "/sign_in";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool theme = true;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In"),
      ),
      body: Body(),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.bubble_chart),
          label: Text("Mode"),
          isExtended: true,
          onPressed: () => {
                if (theme)
                  {themeNotifier.setTheme(darkTheme), theme = false}
                else
                  {themeNotifier.setTheme(lightTheme), theme = true}
              }),
    );
  }
}
