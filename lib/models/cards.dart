import 'package:flutter/material.dart';

class Cards {
  final image, title, off;
  final price;
  bool isSeelected;
  Cards({
    required this.off,
    required this.image,
    required this.title,
    required this.price,
    required this.isSeelected,
  });
}

int counter = 0;
List<Cards> favorites = [];
List<Cards> addToCart = [];
List<Cards> cards = [
  Cards(
    image: "assets/images/shoes.jpg",
    title: "Shoes",
    off: "30% Off",
    price: "100",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/suit.jpg",
    title: "Suit",
    off: "30% Off",
    price: "200",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/shirt.jpg",
    title: "Shirts",
    off: "30% Off",
    price: "100",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/t-shirt.jpg",
    title: "T-Shirt",
    off: "30% Off",
    price: "50",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/joggers.jpg",
    title: "Joggers",
    off: "30% Off",
    price: "250",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/shirt.jpg",
    title: "Shirts",
    off: "30% Off",
    price: "200",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/t-shirt.jpg",
    title: "T-Shirt",
    off: "30% Off",
    price: "100",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/joggers.jpg",
    title: "Joggers",
    off: "30% Off",
    price: "50",
    isSeelected: false,
  ),
  Cards(
    image: "assets/images/jeans.jpg",
    title: "Jeans",
    off: "30% Off",
    price: "50",
    isSeelected: false,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
