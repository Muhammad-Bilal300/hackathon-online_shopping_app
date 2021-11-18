import 'package:flutter/material.dart';
import 'package:hackathon/models/cards.dart';

import 'package:hackathon/models/products.dart';

import 'package:hackathon/screens/details/detailScreen.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool selected = false;
  var icon = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return container(index);
        });
  }

  InkWell container(int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(card: cards[index])));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 4,
              blurRadius: 4,
              // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(20),
        // width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        if (!favorites.contains(cards[index]))
                          favorites.add(cards[index]);
                        cards[index].isSeelected = true;
                      });
                    },
                    child: Icon(
                        cards[index].isSeelected
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: cards[index].isSeelected
                            ? Colors.redAccent
                            : null)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange),
                  padding: EdgeInsets.all(3),
                  child: Text(cards[index].off),
                ),
              ],
            ),
            Image.asset(cards[index].image),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cards[index].title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text("\$${cards[index].price}",
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            addToCart.add(cards[index]);
                            counter = addToCart.length;
                          });
                        },
                        child: Icon(Icons.shopping_cart))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
