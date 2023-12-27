import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap, required this.text});

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(text, style: kLargeButtonText,)),
        color: kBotomContaineerButton,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBotomContainerButton,
      ),
    );
  }
}