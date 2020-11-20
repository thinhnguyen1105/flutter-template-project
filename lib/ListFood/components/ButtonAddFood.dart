import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_flutter/DashBoard/index.dart';
import 'package:practice_flutter/constants.dart';

class ButtonAddFood extends StatelessWidget {
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
          padding: EdgeInsets.all(10),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: kPrimaryColor.withOpacity(.4)),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
            child: SvgPicture.asset("assets/icons/plus.svg"),
          ),
        ),
      ),
    );
  }
}
