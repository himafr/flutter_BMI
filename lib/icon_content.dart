import "package:flutter/material.dart";

class IconContent extends StatelessWidget {
  const IconContent({super.key,required this.icon ,this.str="text",this.height=15.0,required this.textColor});
  final Icon icon;
  final String str;
  final double height;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                    SizedBox(height:height),
                    Text(str ,style: TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold,
                      color:textColor
                    ),)
                  ],
                );
  }
  }