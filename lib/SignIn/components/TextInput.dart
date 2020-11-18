import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String placeholder;
  final Widget icon;
  TextInput(this.placeholder, this.icon);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(right: 16), child: icon),
          Expanded(
              child: TextField(
            decoration: InputDecoration(hintText: placeholder),
          ))
        ],
      ),
    );
  }
}
