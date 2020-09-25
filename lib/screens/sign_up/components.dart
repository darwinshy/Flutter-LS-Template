import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../constants.dart';
import '../../size_config.dart';

Padding customSuffixIcon(Icon icon) {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
        getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
    child: icon,
  );
}

String email;
String password;
String repassword;
String fullname;
String phoneNumber;

class SignUpForms extends StatefulWidget {
  final PageController controller;

  SignUpForms({this.controller});

  @override
  _SignUpFormsState createState() => _SignUpFormsState();
}

class _SignUpFormsState extends State<SignUpForms> {
  final _formKey = GlobalKey<FormState>();

  // Validates the First Step of Sign UP and swips to second Page

  void validateSignUpBasics() {
    FormState _formState = _formKey.currentState;
    if (_formState.validate()) {
      _formState.validate();
      _formState.save();
      widget.controller.animateToPage(2,
          duration: new Duration(milliseconds: 1500), curve: Curves.easeOut);
    }
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
          buildRePasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          SizedBox(
              width: double.infinity,
              child: buildOutlineButton(
                "Continue",
                validateSignUpBasics,
              ))
        ],
      ),
    );
  }
  //########################################################################################################

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        } else {
          return null;
        }
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
      onChanged: (value) {
        password = value;
      },
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

  TextFormField buildRePasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => repassword = newValue,
      onChanged: (value) {
        repassword = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          return kPassNullError;
        } else if (password != repassword) {
          return kMatchPassError;
        } else {
          return null;
        }
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Confirm Password",
          hintText: "Re-Enter your password",
          suffixIcon: customSuffixIcon(Icon(AntDesign.key))),
    );
  }

//########################################################################################################

}

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _profileformKey = GlobalKey<FormState>();

  void validateSignUpDeatils() {
    FormState _formState = _profileformKey.currentState;
    if (_formState.validate()) {
      print(_formState.validate());
      _formState.save();
      print(email);
      print(password);
      print(repassword);
      print(fullname);
      print(phoneNumber);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _profileformKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          SizedBox(
              width: double.infinity,
              child: buildOutlineButton(
                "Complete",
                validateSignUpDeatils,
              ))
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => fullname = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return kNamelNullError;
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Name",
          hintText: "Enter your Full Name",
          suffixIcon: customSuffixIcon(Icon(MaterialCommunityIcons.account))),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => fullname = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return kPhoneNumberNullError;
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Phone",
          hintText: "Enter your Phone Number",
          suffixIcon: customSuffixIcon(Icon(MaterialCommunityIcons.dialpad))),
    );
  }
}

// //########################################################################################################
// class SocialIcons extends StatelessWidget {
//   const SocialIcons({
//     Key key,
//     this.icon,
//     this.function,
//   }) : super(key: key);

//   final Icon icon;
//   final Function function;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:
//           BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: function,
//             child: Container(
//               margin: EdgeInsets.all(getProportionateScreenHeight(12)),
//               height: getProportionateScreenHeight(50),
//               width: getProportionateScreenWidth(50),
//               decoration: BoxDecoration(shape: BoxShape.circle),
//               child: icon,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
