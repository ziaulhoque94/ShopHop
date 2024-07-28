import 'package:flutter/material.dart';
import 'package:map_tracker/Shop_hop_app/Screen/AccountScreen.dart';
import 'package:map_tracker/Shop_hop_app/Screen/HomeScreen.dart';
import 'package:map_tracker/Shop_hop_app/Screen/CardScreen.dart';
import 'package:map_tracker/Shop_hop_app/Screen/SearchScreen.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/CategoriesSection.dart';
import 'package:map_tracker/Shop_hop_app/subScreen/Drawer_header.dart';

import '../subScreen/CeroselSection.dart';
import 'FavoriteItemScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  static const List<Widget> __widgetNavigationOption = [
    Homescreen(),
    FavoriteItemScreen(),
    CardScreen(),
    Accountscreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Searchscreen(),
                    )
                );
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: __widgetNavigationOption.elementAt(_currentIndex),
      ),

      //   drawer Navigation Bar
      drawer: DrawerHeaderSection(),
      bottomNavigationBar: BottomNavigationBar(


        items: const <BottomNavigationBarItem> [

          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined, color: Colors.black,size: 24,
              )
          ),
          BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.favorite_border, color: Colors.black,size: 24,
              )
          ),
          BottomNavigationBarItem(
              label: 'Card',
              icon: Icon(Icons.local_grocery_store_outlined, color: Colors.black,size: 24,
              )
          ),
          BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.person_outline, color: Colors.black,size: 24,
              )
          ),
        ],
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amber[600],
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        onTap: _onItemTapped,
      ),


    );
  }
}
