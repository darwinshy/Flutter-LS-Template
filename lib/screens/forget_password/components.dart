import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../constants.dart';
import '../../size_config.dart';

class ForgetPassswordForm extends StatefulWidget {
  @override
  _ForgetPassswordFormState createState() => _ForgetPassswordFormState();
}

class _ForgetPassswordFormState extends State<ForgetPassswordForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  // final List<String> errors = [];
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
          SizedBox(height: SizeConfig.screenHeight * 0.2),
          SizedBox(
            width: double.infinity,
            child: buildOutlineButton("Continue", () {
              FormState _formState = _formKey.currentState;
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
          hintText: "Enter you email",
          suffixIcon: customSuffixIcon(Icon(AntDesign.mail))),
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
  //########################################################################################################
}
