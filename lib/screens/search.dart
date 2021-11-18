import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_search_bar/animated_search_bar.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.redAccent,
        elevation: 7,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
           Navigator.of(context).pop();
        },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.redAccent,
            size: 25,
          ),
        ),

        title: AnimatedSearchBar(
          label: "Search",
          labelStyle: TextStyle(fontSize: 20),
          cursorColor: Colors.redAccent,
          searchDecoration: InputDecoration(
            border: InputBorder.none,
            alignLabelWithHint: true,
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 18, color: Colors.white),
            fillColor: Colors.white,
            // filled: true,
          ),
          onChanged: (value) {
           
          },

     
      ),
    ));
  }
}