import 'dart:async';

import 'package:flutter/material.dart';
import 'package:map_tracker/Shop_hop_app/Screen/Home.dart';
import 'package:map_tracker/Shop_hop_app/authScreen/CuroselScreen.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/CeroselSection.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3),
        () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Curoselscreen())
        ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.shopping_cart, size: 100, color: Colors.amber,),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Shop", style: TextStyle(
                color: Colors.black, fontSize: 22
              ),
              ),
              Text("hop", style: TextStyle(
                  color: Colors.amber, fontSize: 22
              ),
              )
            ],
          )


        ],
      ),
    );
  }
}
