import 'package:flutter/material.dart';

class TitleSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('SIGN IN', style: Theme.of(context).textTheme.display1),
        Text('SIGN UP', style: Theme.of(context).textTheme.button)
      ],
    );
  }
}
