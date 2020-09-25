import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../size_config.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcons(
            icon: Icon(
              FontAwesome.google,
              size: getProportionateScreenWidth(30),
            ),
            function: () {}),
        SocialIcons(
            icon: Icon(
              FontAwesome.facebook,
              size: getProportionateScreenWidth(30),
            ),
            function: () {}),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key key,
    this.icon,
    this.function,
  }) : super(key: key);

  final Icon icon;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.all(getProportionateScreenHeight(12)),
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(50),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: icon,
            ),
          )
        ],
      ),
    );
  }
}
