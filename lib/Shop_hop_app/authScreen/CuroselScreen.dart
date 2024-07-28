import 'package:flutter/material.dart';
import 'package:map_tracker/Shop_hop_app/Screen/Home.dart';
import 'package:map_tracker/Shop_hop_app/authScreen/LoginScreen.dart';

class Curoselscreen extends StatefulWidget {
  const Curoselscreen({super.key});

  @override
  State<Curoselscreen> createState() => _CuroselscreenState();
}

class _CuroselscreenState extends State<Curoselscreen> {

  final PageController _pagecontroller=PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            child: Text("Hi, Welcome",
              style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 13,
          ),
          Container(
            child: const Text("We make around your city affordable, easy\nand efficient",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),


          SizedBox(
            height: 50,
          ),

          // Page viewer
          Container(
            height: MediaQuery.sizeOf(context).height * 0.40,
            width: MediaQuery.sizeOf(context).width * 0.70,
            color: Colors.amber,
          ),


          SizedBox(
            height: 20,
          ),

          Container(
            width: MediaQuery.sizeOf(context).width * 0.70,
            child: ElevatedButton(
                onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home(),));

                  debugPrint("Clicked");
                },
                child: Text("Start to Shopping", ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Already have an account?",
                  style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.8), fontWeight: FontWeight.normal)
              ),
              SizedBox(width: 0,),
              TextButton(
                  onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Loginscreen(),
                    ));
              }, child: Text("Sign In",
                  style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold)
              ))
            ],
          ),



        ],
      ),
    );
  }
}
