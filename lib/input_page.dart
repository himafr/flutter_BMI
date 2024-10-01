import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "./icon_content.dart";
import "./my_conatiner.dart";

const primaryColor = Color(0xff1d1e33);
const secondaryColor = Color(0xffeb1555);
const inactiveColor = Color(0xff111328);
const heightForBottomButton = 60.0;

enum Gender { male, female,notGender }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                        defaultMaleColor=!defaultMaleColor;
                        defaultFemaleColor=false;
                        });
                      },
                      child: MyContainer(
                          colour: defaultMaleColor?primaryColor:inactiveColor ,
                          child: const IconContent(
                            icon: Icon(
                              FontAwesomeIcons.mars,
                              size: 80.0,
                            ),
                            textColor: Color(0xFF8D8E98),
                            str: "MALE",
                          )),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                       defaultFemaleColor=!defaultFemaleColor;
                       defaultMaleColor=false;
                     });
                    },
                    child: MyContainer(
                      colour: defaultFemaleColor ?primaryColor:inactiveColor,
                      child: const IconContent(
                        icon: Icon(FontAwesomeIcons.venus, size: 80.0),
                        textColor: Color(0xFF8D8E98),
                        str: "FEMALE",
                      ),
                    ),
                  )),
                ],
              ),
            ),
            const Expanded(
              child: MyContainer(
                colour: primaryColor,
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: MyContainer(
                    colour: primaryColor,
                  )),
                  Expanded(
                      child: MyContainer(
                    colour: primaryColor,
                  )),
                ],
              ),
            ),
            Container(
              color: secondaryColor,
              height: heightForBottomButton,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              // child: Expanded(child: TextButton(child:const Text("s"), onPressed: (){},),),
            )
          ],
        ));
  }
}
