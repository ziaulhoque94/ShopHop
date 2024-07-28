import 'package:flutter/material.dart';
import 'package:map_tracker/Shop_hop_app/Screen/AccountScreen.dart';
import 'package:map_tracker/Shop_hop_app/Screen/FavoriteItemScreen.dart';
import 'package:map_tracker/Shop_hop_app/Screen/Home.dart';
import 'package:map_tracker/Shop_hop_app/Screen/CardScreen.dart';
import 'package:map_tracker/Shop_hop_app/authScreen/CuroselScreen.dart';
import 'package:map_tracker/Shop_hop_app/authScreen/LoginScreen.dart';
import 'package:map_tracker/Shop_hop_app/authScreen/RegisterScreen.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/CeroselSection.dart';
import 'package:map_tracker/tutorial/DrawerNavigation.dart';

import 'Shop_hop_app/authScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop Hop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const Splashscreen(),
      routes: {
        "/Drawernavigation" : (context) => const Drawernavigation(),
        "/Home" : (context) => const Home(),
        "/Addtocardscreen" : (context) => const FavoriteItemScreen(),
        "/Orderscreen" : (context) => const CardScreen(),
        "/Accountscreen" : (context) => const Accountscreen(),
        "/Splashscreen" : (context) => const Splashscreen(),
        "/RegisterScreen" : (context) => const Registerscreen(),
        "/LoginScreen" : (context) => const Loginscreen(),
        "/Curoselscreen" : (context) => const Curoselscreen(),
      }
    );
  }
}