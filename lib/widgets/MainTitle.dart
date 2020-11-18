import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle();
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'HELLO WORLD !\n',
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(fontWeight: FontWeight.bold)),
        TextSpan(
            text: "Welcome to the new world !",
            style: Theme.of(context).textTheme.headline)
      ]),
    );
  }
}
