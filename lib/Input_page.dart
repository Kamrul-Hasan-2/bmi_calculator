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

  // Color maleColor = inActiveColor;
  // Color femaleColor = inActiveColor;
  //
  // void updateColor(selectedGender){
  //     if(selectedGender==Gender.male){
  //       if(maleColor == inActiveColor){
  //         maleColor = activeCardColor;
  //         femaleColor = inActiveColor;
  //       }else{
  //         maleColor = inActiveColor;
  //       }
  //     }if(selectedGender==Gender.female){
  //       if(femaleColor== inActiveColor){
  //         femaleColor = activeCardColor;
  //         maleColor = inActiveColor;
  //       }else{
  //         femaleColor = inActiveColor;
  //       }
  //     }
  // }

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
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                       selectedGender = Gender.male;
                     });
                    },
                    child: ReUseCard(
                      childCard:
                          ReUseIcon(icon: FontAwesomeIcons.mars, label: "MALE"),
                      colour: selectedGender == Gender.male ? activeCardColor : inActiveColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReUseCard(
                      colour: selectedGender == Gender.female ? activeCardColor : inActiveColor,
                      childCard:
                          ReUseIcon(icon: FontAwesomeIcons.venus, label: "FEMALE"),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReUseCard(
                colour: activeCardColor,
                childCard: Text(""),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    colour: activeCardColor,
                    childCard: Text(""),
                  ),
                ),
                Expanded(
                  child: ReUseCard(
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




