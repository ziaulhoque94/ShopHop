import 'package:flutter/material.dart';

class FavoriteItemScreen extends StatefulWidget {
  const FavoriteItemScreen({super.key});

  @override
  State<FavoriteItemScreen> createState() => _FavoriteItemScreenState();
}

class _FavoriteItemScreenState extends State<FavoriteItemScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            for(int i=0; i<10; i++)
      
             Container(
               margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
               width: MediaQuery.sizeOf(context).width * double.infinity,
               height: 100,
               child: Row(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    color: Colors.green,
                    margin: EdgeInsets.all(2),
                  ),
      
                  Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
      
                        Container(
                          child: Text("Red Dress",
                            style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13
                            ),
                          ),
                        ),
      
                        Container(
      
                          child: Text("BDT-1200",
                            style: TextStyle(
                                color: Colors.amber[800], fontSize: 12
                            ),
                          ),
                        ),
      
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.03,
                        ),
      
                        // details section
                        Container(
      
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
      
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.shopping_cart, size: 12,color: Colors.black,),
                                    Text("Move to card", style: TextStyle(
                                      color: Colors.black, fontSize: 10
                                    ),),
                                  ],
                                ),
                              ),
      
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.remove_circle, size: 12,color: Colors.black,),
                                    Text("Remove", style: TextStyle(
                                        color: Colors.black, fontSize: 10
                                    ),),
                                  ],
                                ),
                              ),
      
                            ],
                          ),
                        )
      
      
                      ],
                    ),
                  ),
      
                ],
                         ),
             ),
      
          ],
        )
      ),
    );
  }
}
