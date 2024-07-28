import 'package:flutter/material.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: "Search"
          ),
          onSubmitted: (value) {
            debugPrint("Submited");
          },
          onTap: () {
            debugPrint("changed");
          },
        ),
      ),
    );
  }
}
