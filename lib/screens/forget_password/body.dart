import 'package:TechFests/screens/components/noAccountText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../size_config.dart';
import 'components.dart';

class Body extends StatelessWidget {
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Forgot Password",
                        style: GoogleFonts.montserrat(
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Please enter your email \nand we will send you recovery link.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ForgetPassswordForm(),
                ),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
