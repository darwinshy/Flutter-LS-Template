import '../../theme.dart';
import '../sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(12)),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    child: SignUpScreen(), type: PageTransitionType.fade));
          },
          child: Text(
            " Sign Up",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: getProportionateScreenWidth(12)),
          ),
        ),
      ],
    );
  }
}
