import 'package:flutter/material.dart';
import 'package:hackathon/models/products.dart';

class Categories extends StatefulWidget {
  // final Product product;

  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // List<String> categories = [
  //   "Shoes",
  //   "Suit",
  //   "Shirts",
  //   "T-Shirts",
  //   "Joggers",
  //   "Jeans",
  //   "Track Suits",
  // ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return buildCategory(index);
          }),
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 15),
    //   child: Container(
    //     // height: 30,
    //     child: ListView.builder(
    //       shrinkWrap: true,
    //         scrollDirection: Axis.horizontal,
    //         itemCount: products.length,
    //         itemBuilder: (context, index) {
    //           return buildCategory(index);
    //         }),
    //   ),
    // );
  }

  Widget buildCategory(int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          // boxShadow: BoxShadow(
          //   ,
          // ),
          boxShadow: [
            BoxShadow(
              
              color: Colors.grey,
              spreadRadius: 3,
              blurRadius: 4,
               // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(products[index].image),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  products[index].title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  products[index].items,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ],
            )
            // Text(
            //   categories[index],
            //   style: TextStyle(
            //       color: selectedIndex == index ? kTextColor : Colors.grey,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16),
            // ),
            // Container(
            //   height: 2,
            //   width: 30,
            //   color: selectedIndex == index ? Colors.black : Colors.transparent,
            //   margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
            // )
          ],
        ),
      ),
    );
  }
}
