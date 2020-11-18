import 'package:flutter/material.dart';
import 'package:practice_flutter/SignIn/components/ButtonRedirect.dart';
import 'package:practice_flutter/SignIn/components/IconWithBorder.dart';
import 'package:practice_flutter/SignIn/components/TextInput.dart';
import 'package:practice_flutter/SignIn/components/TitleSignIn.dart';
import 'package:practice_flutter/widgets/BackgroundImage.dart';
import 'package:practice_flutter/constants.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          BackgroundImage(),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(children: <Widget>[
                  TitleSignIn(),
                  Spacer(),
                  TextInput(
                    "Email Address",
                    Icon(
                      Icons.alternate_email,
                      color: kPrimaryColor,
                    ),
                  ),
                  TextInput(
                    "Password",
                    Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: <Widget>[
                        IconWithBorder(Icon(
                          Icons.android,
                          color: Colors.white.withOpacity(.5),
                        )),
                        SizedBox(width: 20),
                        IconWithBorder(Icon(
                          Icons.chat,
                          color: Colors.white.withOpacity(.5),
                        )),
                        Spacer(),
                        ButtonRedirect()
                      ],
                    ),
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
