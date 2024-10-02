// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  int height=180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      str: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
           Expanded(
            child: MyContainer1(
              colour: kPrimaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline ,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kTextStyle,
                      ),
                      Text("cm",style: kLabelStyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor:  Color(0xff8d8e98),
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x29eb1555),
                      activeTrackColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                      min: 120.0,
                      max: 220.0,
                      value: height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                       height=value.round();
                        });
                      },
                      ),
                  )
                ],
              ),
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
