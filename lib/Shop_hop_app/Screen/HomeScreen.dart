import 'package:flutter/material.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/FeaturedProduct.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/LatestProduct.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/newestItem.dart';

import '../subScreen/CategoriesSection.dart';
import '../subScreen/CeroselSection.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Curesoel section
          Container(height: 250, child: Ceroselsection()),


          // Categories Section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const Text("Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
              ),
            ),
          ),
          Categoriessection(),

          // Newest Arrivals Item
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Newest Arrivals",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Text("View all",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                  )
                ],
              ),

              // item
              Newestitem(),
            ],
          ),


          // Featurer Product Item
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Featured Product",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Text("View all",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
              // item
              Featuredproduct(),
            ],
          ),


          //  Latest product
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Container(
                child: Text("Latest Product"),
              ),
              // item
              Latestproduct(),
            ],
          ),



          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
