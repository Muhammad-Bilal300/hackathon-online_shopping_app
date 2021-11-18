import 'package:flutter/material.dart';
import 'package:hackathon/screens/Home/Components/bottomNavigation.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        foregroundColor: Colors.redAccent,
        automaticallyImplyLeading: false,
        title: Text("Profile"),
      ),
      bottomNavigationBar: BottomNavigationDrawer(),
      body: Container(
          padding: EdgeInsets.only(left: 15, top: 23, right: 16),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
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
                      child: Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ),
                    Text(
                      "Muhammad Bilal",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("bilalaarbi300@gmail.com",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("03472112953",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "date Of Birth",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("22/4/2001",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City",
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                      SizedBox(
                    height: 3,
                  ),
                      Text("Karachi",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]))
                    ],
                  ),
                  
                ],
              ),
            ]),
          )),
    );
  }
}
