import 'package:flutter/material.dart';
import 'package:hackathon/models/cards.dart';

class CardLists extends StatefulWidget {
  const CardLists({Key? key}) : super(key: key);

  @override
  _CardListsState createState() => _CardListsState();
}

class _CardListsState extends State<CardLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        foregroundColor: Colors.redAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Cart Items"),
      ),
      body: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: addToCart.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 3,
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
                            addToCart.removeAt(index);
                          });
                        },
                        child: Icon(Icons.delete),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange),
                        padding: EdgeInsets.all(3),
                        child: Text(addToCart[index].off),
                      ),
                    ],
                  ),
                  Image.asset(addToCart[index].image),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        addToCart[index].title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Text("\$${addToCart[index].price}",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                              onTap: () {}, child: Icon(Icons.shopping_cart))
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
