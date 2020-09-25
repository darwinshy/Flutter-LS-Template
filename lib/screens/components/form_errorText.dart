import 'package:flutter/material.dart';

import '../../size_config.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(
          "Something is wrong",
          style: TextStyle(color: Colors.red),
        ),
        children: List.generate(
          errors.length,
          (index) => errorTextIndexail(error: errors[index]),
        ));
  }

  Row errorTextIndexail({String error}) {
    return Row(
      children: [
        Icon(Icons.error),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Text(error)
      ],
    );
  }
}

//########################################################################################################
