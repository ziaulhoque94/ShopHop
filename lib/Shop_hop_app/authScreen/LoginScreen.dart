import 'package:flutter/material.dart';

import 'RegisterScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            SizedBox(
              height: 10,
            ),
            // Email input
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),


            SizedBox(
              height: 10,
            ),
            //   password input
            Container(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[800],
                ),
                onPressed: () {
                  debugPrint("Clicked");
                },
                child: Text("Sign In", style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              color: Colors.amber[800],
              width: MediaQuery.sizeOf(context).width * 0.85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Registerscreen(),)
                  );
                },
                child: Text("Sign Up", style: TextStyle(color: Colors.amber[800]),),
              ),
            )



          ],
        ),
      ),
    );
  }
}
