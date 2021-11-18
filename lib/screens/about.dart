import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            padding: EdgeInsets.symmetric(vertical: 35),
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 10))
                    ],
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //     image:
                    //         AssetImage('assets/STB_white_logo.jpg'),
                    //     fit: BoxFit.cover)
                  ),
                  child: Icon(Icons.email, size: 80, color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Drop Line About us",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.map,
              color: Colors.redAccent,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Ayesha Manzil,F.B Area,Karachi",
                style: TextStyle(fontSize: 16, color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Text("Open Map",
                style: TextStyle(fontSize: 16, color: Colors.blue)),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.mobile_friendly,
              color: Colors.redAccent,
            ),
            SizedBox(
              height: 20,
            ),
            Text("03472112953",
                style: TextStyle(fontSize: 16, color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.lock_clock,
              color: Colors.redAccent,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Monday-Saturday",
                style: TextStyle(fontSize: 16, color: Colors.black)),
          ],
        ),
      ]),
    );
  }
}
