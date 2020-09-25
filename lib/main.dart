import 'root.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

const String mainLogo = "asset/logo.png";
const String title = "Unknown";

void main() => runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(lightTheme),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MatApp();
  }
}

class MatApp extends StatelessWidget {
  const MatApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: themeNotifier.getTheme(),
      home: AnimatedSplashScreen(
          curve: Curves.easeIn,
          duration: 3000,
          splash: Center(
            child: Image.asset(
              mainLogo,
              height: 60,
            ),
          ),
          nextScreen: Root(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.white),
    );
  }
}
