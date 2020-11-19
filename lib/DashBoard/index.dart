import 'package:flutter/material.dart';
import 'package:practice_flutter/DashBoard/components/MainTitle.dart';
import 'package:practice_flutter/DashBoard/components/NextButton.dart';
import 'package:practice_flutter/widgets/BackgroundImage.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        BackgroundImage(),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[MainTitle(), NextButton()],
        ))
      ],
    ));
  }
}
