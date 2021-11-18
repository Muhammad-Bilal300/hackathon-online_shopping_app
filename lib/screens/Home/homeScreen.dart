import 'package:flutter/material.dart';
import 'package:hackathon/models/cards.dart';
import 'package:hackathon/screens/Home/Components/body.dart';
import 'package:hackathon/screens/Home/Components/bottomNavigation.dart';
import 'package:hackathon/screens/Home/Components/drawer.dart';
import 'package:hackathon/screens/card_items.dart';
import 'package:hackathon/screens/favorites.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

count() {
  return counter;
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.redAccent,
        title: Text("Home"),
        // foregroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favourites()));
              },
              icon: Icon(
                Icons.favorite,
                size: 30,
              )),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CardLists()));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 33,
                  )),
              Positioned(
                right: 2,
                top: 4,
                child: Container(
                    child: Center(
                      child: Text(
                        addToCart.length.toString(),
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle)),
              )
            ],
          ),
          SizedBox(width: 5)
        ],
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: BottomNavigationDrawer(),
      body: Body(),
    );
  }
}
