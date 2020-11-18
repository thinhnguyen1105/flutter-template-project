import 'package:flutter/material.dart';
import 'package:practice_flutter/constants.dart';
import 'package:practice_flutter/widgets/BackgroundImage.dart';
import 'package:practice_flutter/widgets/MainTitle.dart';
import 'package:practice_flutter/widgets/NextButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Auth Screen',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme: TextTheme(
                display1:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                button: TextStyle(
                  color: kPrimaryColor,
                ),
                headline: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal)),
            inputDecorationTheme: InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white.withOpacity(.2))))),
        home: WelcomeScreen());
  }
}

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
