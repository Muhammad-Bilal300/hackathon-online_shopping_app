import 'package:flutter/material.dart';
import 'package:hackathon/screens/about.dart';
import 'package:hackathon/screens/card_items.dart';
import 'package:hackathon/screens/favorites.dart';
import 'package:hackathon/screens/login.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60,left: 15,bottom: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muhammad Bilal",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "bilalaarbi300@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            // height: 10,
            thickness: 2,
            // indent: 30,
            // endIndent: 30,
          ),
          Container(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                itemCount: menuitem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    MenuCardMethod(menu: menuitem[index])),
          ),
        ],
      ),
    );
  }
}

class MenuCardMethod extends StatelessWidget {
  final MenuItem menu;
  const MenuCardMethod({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color white = Colors.white;
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(
          menu.icon,
          color: Colors.redAccent,
          size: 25,
        ),
        title: Text(
          menu.text,
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        onTap: () {
          if (menu.index == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Favourites()));
          } else if (menu.index == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CardLists()));
          } else if (menu.index == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => About()));
          } else if (menu.index == 4) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          }
        },
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;
  final int index;
  MenuItem({
    required this.index,
    required this.text,
    required this.icon,
  });
}

List<MenuItem> menuitem = [
  MenuItem(text: "Favorite", icon: Icons.favorite, index: 1),
  MenuItem(text: "Cart", icon: Icons.shopping_cart, index: 2),
  MenuItem(text: "About", icon: Icons.info, index: 3),
  MenuItem(text: "Log Out", icon: Icons.logout, index: 4),
];
