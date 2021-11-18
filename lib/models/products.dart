import 'package:flutter/material.dart';

class Product {
  final String image, title, items;

  Product({
    required this.items,
    required this.image,
    required this.title,
  });
}

List<Product> products = [
  Product(
    image: "assets/images/shoes.jpg",
    title: "Shoes",
    items: "10 Pieces left",
  ),
  Product(
    image: "assets/images/suit.jpg",
    title: "Suit",
    items: "5 Pieces left",
  ),
  Product(
    image: "assets/images/shirt.jpg",
    title: "Shirts",
    items: "10 Pieces left",
  ),
  Product(
    image: "assets/images/t-shirt.jpg",
    title: "T-Shirt",
    items: "30 Pieces left",
  ),
  Product(
    image: "assets/images/joggers.jpg",
    title: "Joggers",
    items: "10 Pieces left",
  ),
  Product(
    image: "assets/images/jeans.jpg",
    title: "Jeans",
    items: "20 Pieces left",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
