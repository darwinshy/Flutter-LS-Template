import '../components/social_section.dart';
import '../components/noAccountText.dart';
import 'components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Welcome Back",
                  style: GoogleFonts.montserrat(
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign In with your email and password \nor continue with social accounts.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SignInForm(),
              ),
              SocialSection(),
              NoAccountText()
            ],
          ),
        )),
      ),
    );
  }
}

//########################################################################################################
