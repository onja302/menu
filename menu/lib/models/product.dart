import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
    id:1,
    title: "",
    price: 100,
    description: dummyText,
    image: "",
    color: Color(0xFF3D82AE)
  ),
  Product(
    id:2,
    title: "",
    price: 150,
    description: dummyText,
    image: "",
    color: Color(0xFFD3A984)
  ),
  Product(
    id:3,
    title: "",
    price: 150,
    description: dummyText,
    image: "",
    color: Color(0xFF989493)
  ),
  Product(
    id:4,
    title: "",
    price: 90,
    description: dummyText,
    image: "",
    color: Color(0xFFE6B398)
  ),
   Product(
    id:5,
    title: "",
    price: 200,
    description: dummyText,
    image: "",
    color: Color(0xFFFB7883)
  ),
  Product(
    id:6,
    title: "",
    price: 2300,
    description: dummyText,
    image: "",
    color: Color(0xFFAEAEAE)
  ),
];
String dummyText = "coming like hurricane I take it in real slow. The world is spinning like a wather vane fragole and composed though I am breaking down again";


//https://www.youtube.com/watch?v=XBKzpTz65Io tuto