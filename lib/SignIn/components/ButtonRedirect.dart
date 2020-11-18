import 'package:flutter/material.dart';
import 'package:practice_flutter/constants.dart';
import 'package:practice_flutter/main.dart';

class ButtonRedirect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return WelcomeScreen();
        }));
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor,
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
      ),
    ));
  }
}
