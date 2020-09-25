import '../../constants.dart';
import '../forget_password/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:page_transition/page_transition.dart';
import '../../theme.dart';
import '../../size_config.dart';

//########################################################################################################

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;

  void _navigation() {
    Navigator.push(
        context,
        PageTransition(
            curve: Curves.easeIn,
            type: PageTransitionType.fade,
            child: ForgetPasswordScreen(),
            inheritTheme: true,
            ctx: context));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (cvalue) {
                    setState(() {
                      remember = cvalue;
                    });
                  }),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                onTap: _navigation,
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SizedBox(
            width: double.infinity,
            child: buildOutlineButton("Continue", () {
              FormState _formState = _formKey.currentState;
              print(_formState.validate());
              if (_formState.validate()) {
                _formState.save();
              }
            }),
          )
        ],
      ),
    );
  }

//########################################################################################################

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        // try {
        if (value.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        } else {
          return null;
        }
        // } catch (e) {
        //   print(e);
        //   return null;
        // }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          suffixIcon: customSuffixIcon(Icon(AntDesign.mail))),
    );
  }

//########################################################################################################

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        } else {
          return null;
        }
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          suffixIcon: customSuffixIcon(Icon(AntDesign.key))),
    );
  }

//########################################################################################################

  Padding customSuffixIcon(Icon icon) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
          getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
      child: icon,
    );
  }
}

// //########################################################################################################

// //########################################################################################################
