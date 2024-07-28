import 'package:flutter/material.dart';
import 'package:map_tracker/Shop_hop_app/authScreen/LoginScreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //   shopHop Text and icon
            Container(
              child: Icon(
                Icons.shopping_cart,
                size: 50,
                color: Colors.amber[800],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Shop",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "hop",
                  style: TextStyle(
                      color: Colors.amber[800],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),

            SizedBox(
              height: 25,
            ),
            //   Field box

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // First name and last name section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "First Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

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
                    height: 10,
                  ),
                //   confirm password
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm password",
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

                      },
                      child: Text("Sign Up", style: TextStyle(color: Colors.white),),
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
                            MaterialPageRoute(builder: (context) => const Loginscreen(),)
                        );

                      },
                      child: Text("Sign In", style: TextStyle(color: Colors.amber[800]),),
                    ),
                  )


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
