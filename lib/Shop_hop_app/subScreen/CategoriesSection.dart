import 'package:flutter/material.dart';

class Categoriessection extends StatelessWidget {
  const Categoriessection(
      {super.key, required});

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for(int i = 1; i < 10; i++)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor:Colors.red,
                      child: Icon(Icons.person, color: Colors.white, size: 24,),
                    ),

                    Text("Men",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
}
