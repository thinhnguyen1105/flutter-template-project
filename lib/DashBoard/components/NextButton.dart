import 'package:flutter/material.dart';
import 'package:practice_flutter/SignIn/index.dart';
import 'package:practice_flutter/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton();
  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SignInScreen();
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: kPrimaryColor),
        child: Row(
          children: <Widget>[
            Text("START LEARNING",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: Colors.black)),
            SizedBox(width: 10),
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
            )
          ],
        ),
      ),
    ));
  }
}
