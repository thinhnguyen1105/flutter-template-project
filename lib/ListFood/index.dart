import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_flutter/ListFood/components/CategoryTitle.dart';
import 'package:practice_flutter/ListFood/components/FoodCard.dart';
import 'package:practice_flutter/ListFood/components/SearchBox.dart';
import 'package:practice_flutter/constants.dart';

class ListFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: kPrimaryColor.withOpacity(.4)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 11,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Simple way to find \nTasty Food",
                  style: Theme.of(context).textTheme.headline),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CategoryTitle(title: 'All', active: true),
                  CategoryTitle(title: 'Italian'),
                  CategoryTitle(title: 'Chinese'),
                  CategoryTitle(title: 'Burgers'),
                  CategoryTitle(title: 'Vietnamese')
                ],
              ),
            ),
            SearchBox(),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    FoodCard(
                        title: "Vegan salad bowl",
                        image: "assets/images/image_1.png",
                        price: 20,
                        calories: "420Kcal",
                        description: kDescription,
                        ingredient: 'Tomato'),
                    FoodCard(
                        title: "Vegan salad bowl",
                        image: "assets/images/image_2.png",
                        price: 20,
                        calories: "420Kcal",
                        description: kDescription,
                        ingredient: 'Tomato'),
                    SizedBox(width: 20)
                  ],
                ))
          ],
        ));
  }
}
