import '../../screens/components/social_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../size_config.dart';
import 'components.dart';

class Body extends StatelessWidget {
  final PageController controller;

  Body(this.controller);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Hello there !",
                    style: GoogleFonts.montserrat(
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Complete the given details or use \nsocial accounts.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SignUpForms(
                    controller: controller,
                  ),
                ),
                SocialSection(),
                Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(20)),
                  child: Text(
                    "By continuing you confirm to agree\n to our terms and conditions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BodyProfile extends StatelessWidget {
  // final PageController controller;

  // BodyProfile(this.controller);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Profile",
                    style: GoogleFonts.montserrat(
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Complete the profile details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ProfileForm(
                      // controller: controller,
                      ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(20)),
                  child: Text(
                    "By continuing you confirm to agree\n to our terms and conditions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
