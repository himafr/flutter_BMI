import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "./icon_content.dart";
import "my_container.dart";
import './constant.dart';

enum Gender { male, female, notGender }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool defaultMaleColor = false;
  bool defaultFemaleColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        defaultMaleColor = !defaultMaleColor;
                        defaultFemaleColor = false;
                      });
                    },
                    colour: defaultMaleColor ? kPrimaryColor : kInactiveColor,
                    child: const IconContent(
                      icon: Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      textColor: Color(0xFF8D8E98),
                      str: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        defaultFemaleColor = !defaultFemaleColor;
                        defaultMaleColor = false;
                      });
                    },
                    colour: defaultFemaleColor ? kPrimaryColor : kInactiveColor,
                    child: const IconContent(
                      icon: Icon(FontAwesomeIcons.venus, size: 80.0),
                      textColor: Color(0xFF8D8E98),
                      str: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: MyContainer1(
              colour: kPrimaryColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: MyContainer1(
                  colour: kPrimaryColor,
                )),
                Expanded(
                    child: MyContainer1(
                  colour: kPrimaryColor,
                )),
              ],
            ),
          ),
          Container(
            color: kSecondaryColor,
            height: kHeightForBottomButton,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
            // child: Expanded(child: TextButton(child:const Text("s"), onPressed: (){},),),
          )
        ],
      ),
    );
  }
}
