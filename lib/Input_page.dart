import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reuse_card.dart';
import 'Reuse_icon.dart';


const botomContainerButton = 70.0;
const activeCardColor = Color(0xFF1D1E33);
const botomContaineerButton = Colors.pink;
const inActiveColor = Color(0xFF111338);

enum Gender{male,female,}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

     Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    childCard:
                        ReUseIcon(icon: FontAwesomeIcons.mars, label: "MALE"),
                    colour: selectedGender == Gender.male ? activeCardColor : inActiveColor,
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? activeCardColor : inActiveColor,
                    childCard:
                        ReUseIcon(icon: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReUseCard(
                onPress: (){},
                colour: activeCardColor,
                childCard: Text(""),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    onPress: (){},
                    colour: activeCardColor,
                    childCard: Text(""),
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    onPress: (){},
                    colour: activeCardColor,
                    childCard: Text(""),
                  ),
                ),
              ],
            )),
            Container(
              color: botomContaineerButton,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: botomContainerButton,
            ),
          ],
        ));
  }
}




