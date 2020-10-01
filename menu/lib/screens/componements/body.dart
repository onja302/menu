import 'package:flutter/material.dart';
import 'package:menu/constant.dart';

import 'categories.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //navbar
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            children: <Widget> [
              Text("Women", style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Categories(),
      ],
    );

  }
}
 
//la classes des categories sur le haut(navbar)
