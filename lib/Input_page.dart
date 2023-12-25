import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const botomContainerButton = 70.0;
const activeCardColor = Color(0xFF1D1E33);
const botomContaineerButton = Colors.pink;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    childCard: ReUseIcon(icon: FontAwesomeIcons.mars,label: "MALE"),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    colour: activeCardColor, childCard: ReUseIcon(icon: FontAwesomeIcons.mars,label: "MALE"),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReUseCard(
                colour: activeCardColor, childCard: Text(""),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    colour: activeCardColor, childCard: Text(""),
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    colour: activeCardColor, childCard: Text(""),
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

class ReUseIcon extends StatelessWidget {
  ReUseIcon({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
       SizedBox(height: 15.0,),
        Text(label, style: TextStyle(fontSize: 15.0, color: Colors.white),),
      ],
    );
  }
}

class ReUseCard extends StatelessWidget {
  ReUseCard({required this.colour,required this.childCard});

  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
