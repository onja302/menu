import 'package:flutter/material.dart';
import 'package:menu/models/product.dart';

import '../../constant.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    
        return GestureDetector(
              onTap: press,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                        child: Container(
                  padding: EdgeInsets.all(kDefaultPaddin),
                  //height: 180,
                  //width: 160,
                  decoration: BoxDecoration(
                    color: products[0].colors,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Image.asset(products[0].image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/ 4 ),
            child: Text(
              products[0].title,
              style: TextStyle(color: kTextLightColor)
            ),
          ),
          Text("${products[0].price}", style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
 

