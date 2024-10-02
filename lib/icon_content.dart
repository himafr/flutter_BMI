import "package:bmi/constant.dart";
import "package:flutter/material.dart";

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key, required this.icon, this.str = "text", this.height = 15.0});
  final Icon icon;
  final String str;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: height),
        Text(
          str,
          style: kLabelStyle,
        )
      ],
    );
  }
}
