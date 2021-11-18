import 'package:flutter/material.dart';
import 'package:hackathon/screens/Home/Components/profile.dart';
import 'package:hackathon/screens/Home/homeScreen.dart';
import 'package:hackathon/screens/search.dart';

class BottomNavigationDrawer extends StatefulWidget {
  const BottomNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<BottomNavigationDrawer> createState() => _BottomNavigationDrawerState();
}

class _BottomNavigationDrawerState extends State<BottomNavigationDrawer> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        if (value == 0) {
          setState(() {
            selected = value;
          });
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()));
        }
        if (value == 1) {
          setState(() {
            selected = value;
          });
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Search()));
        }
        if (value == 2) {
          setState(() {
            selected = value;
          });
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Profile()));
        }
      },
      currentIndex: selected,
      type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.white,
      elevation: 2,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.orange,
      items: [
        BottomNavigationBarItem(
          // label: selected == 0 ?'Home': "",
          title: Text(""),
          icon: Icon(
            Icons.home,
            color: Colors.redAccent,
            // color: selected == 0 ? Colors.orange : Colors.grey,
            size: 30,
          ),

          // title: Text("Home"),
        ),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            Icons.search,
            // color: selected == 1 ? Colors.orange : Colors.grey,
            color: Colors.redAccent,
            size: 30,
          ),
          // title: Text("Catalog"),
          // label: selected == 1 ?'Search': "",
        ),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            Icons.person,
            // color: selected == 2 ? Colors.orange : Colors.grey,
            color: Colors.redAccent,
            size: 30,
          ),
          // label: selected == 2 ?'Profile': "",
        ),
      ],
    );
  }
}
