import 'package:flutter/material.dart';
import 'package:hackathon/models/products.dart';

import 'categories.dart';
import 'itemcard.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Categories(),
          ItemCard(),
        ],
      ),
    );
  }
}
