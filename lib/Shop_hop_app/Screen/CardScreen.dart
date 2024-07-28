import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      

          // Item list
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  for (int i = 0; i < 3; i++)


                    Container(
                      color: Colors.grey[100],
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                      height: 100,
                      child: Row(
                        children: [
                          // image section
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.25,
                            color: Colors.green,
                            margin: const EdgeInsets.only(
                                left: 2, top: 2, bottom: 2),
                          ),

                          // details section
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.65,
                            color: Colors.grey[100],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Red Dress",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),

                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.01,
                                ),
                                // size and quantity
                                Container(
                                    child: Row(
                                  children: [
                                    // size-
                                    Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "Sized-",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )),

                                    // Size name :M
                                    Container(
                                      child: Text(
                                        "M",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),

                                    // Quantity--
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.black),
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Qty: ",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.remove,
                                                size: 10,
                                              )),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add,
                                                size: 10,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                )),

                                // Price..
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      Text("Price: "),
                                      Text(
                                        "\$12",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.01,
                                ),

                                // details section
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.bookmark_border,
                                              size: 14,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              "Next time buy",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.remove_circle,
                                              size: 14,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              "Remove",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
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

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),

                  //   Peyment details
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.05,
                      vertical: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.50)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 0.50))),
                          child: Text("Peyment Detail",
                            style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                            children: [

                              Row(
                                children: [
                                  Text("Offer - ",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                  Text("Offer not available",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black
                                    ),
                                  )
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Shipping Charge -",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                  Text("Free",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.green
                                    ),
                                  )
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Subtotal -",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                  Text("\$36",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber[800]
                                    ),
                                  )
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Delivery Charge -",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                  Text("\$1.5",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber[800]
                                    ),
                                  )
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Discount -",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                  Text("\$0",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber[800]
                                    ),
                                  )
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Total Ammount -",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                  Text("\$37.5",
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber[800]
                                    ),
                                  )
                                ],
                              )


                            ],
                          ),
                        )

                      ],
                    ),
                  )


                ],
              )),
      
      
      
      
      
      
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[800],
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
              ),
              onPressed: (){},
              child: Text("Continue"),
            ),
          ),
        ],
      ),
    );
  }
}
