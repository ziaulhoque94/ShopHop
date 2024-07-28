import 'package:flutter/material.dart';

class Featuredproduct extends StatelessWidget {
  const Featuredproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i = 1; i < 10; i++)
            Card(
              color: Colors.white,
              child: Column(
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Red Dress -",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Text("\$12",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  )

                ],
              ),
            )
        ],
      ),
    );
  }
}
