import 'package:flutter/material.dart';
import 'package:menu/constant.dart';
import 'package:menu/models/product.dart';
import 'package:menu/screens/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';



class Body extends StatelessWidget {
  

  //get products => null;

  

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
       Expanded(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
           child: GridView.builder(
           itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.75,
              ),
               itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: () => Navigator.push(context, 
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products[index],
                                ),
                                ),),
                        ),
               ),
         ),
            ),
      ],
    );

  }
}

