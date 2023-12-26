import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reuse_card.dart';
import 'Reuse_icon.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    childCard:
                        ReUseIcon(icon: FontAwesomeIcons.mars, label: "MALE"),
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveColor,
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveColor,
                    childCard: ReUseIcon(
                        icon: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReUseCard(
                onPress: () {},
                colour: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: kLevelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                        style: kNumberTextStyle,
                        ),
                        Text('cm',
                          style: kLevelTextStyle,
                        ),
                      ],
                    ),
                    Slider(value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.pink,
                      inactiveColor: Colors.grey,
                      onChanged: (double newValue){
                      setState(() {
                        height = newValue.round();
                      });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    onPress: () {},
                    colour: kActiveCardColor,
                    childCard: Text(""),
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    onPress: () {},
                    colour: kActiveCardColor,
                    childCard: Text(""),
                  ),
                ),
              ],
            )),
            Container(
              color: kBotomContaineerButton,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBotomContainerButton,
            ),
          ],
        ));
  }
}
