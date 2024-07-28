import 'package:flutter/material.dart';
import 'dart:async';

class Latestproduct extends StatelessWidget {
  const Latestproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      shrinkWrap: true,

      scrollDirection: Axis.vertical,
        reverse: false,controller: ScrollController(),
        crossAxisCount: 2,
      children: [
        for(int i=0; i<10; i++)
        Container(
          padding: EdgeInsets.only(top: 10, right: 5, left: 5, bottom: 10),
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color:Colors.green,
                    child: Text("-50%"),
                  ),
                  Container(
                    child: Icon(Icons.favorite_border, color: Colors.red,),
                  ),

                ],
              ),

              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("T-Shirt",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Text("\$13",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ],

    );
  }
}
