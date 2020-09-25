import '../../screens/sign_in/signInScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';
import '../../theme.dart';

Widget introductionScreen(BuildContext context) {
  final pages = [
    SkOnboardingModel(
        title: 'Choose your item',
        description:
            'Easily find your grocery items and you will get delivery in wide range',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'asset/1.png'),
    SkOnboardingModel(
        title: 'Pick Up or Delivery',
        description:
            'We make ordering fast, simple and free-no matter if you order online or cash',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'asset/2.png'),
    SkOnboardingModel(
        title: 'Pay quick and easy',
        description: 'Pay for order using credit or debit card',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'asset/3.png'),
  ];
  void _onIntroEndNavigator(String tapped) {
    Navigator.push(
        context,
        PageTransition(
            curve: Curves.easeOutBack,
            type: PageTransitionType.fade,
            child: SignInScreen(),
            ctx: context));
  }

  return SKOnboardingScreen(
    bgColor: Colors.white,
    themeColor: kPrimaryColor,
    pages: pages,
    skipClicked: _onIntroEndNavigator,
    getStartedClicked: _onIntroEndNavigator,
  );
}
