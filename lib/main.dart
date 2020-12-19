import 'package:flutter/material.dart';
import 'package:practice_flutter/ListQuestions/index.dart';
import 'package:practice_flutter/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Auth Screen',
        theme: ThemeData(
            fontFamily: "Poppins",
            brightness: Brightness.dark,
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme: TextTheme(
                title: TextStyle(fontWeight: FontWeight.bold),
                display1:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                button:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                headline: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            inputDecorationTheme: InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white.withOpacity(.2))))),
        home: ListQuestions());
  }
}
