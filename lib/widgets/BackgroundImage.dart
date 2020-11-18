import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/spiderman.jpg"),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        )),
      ),
    );
  }
}
