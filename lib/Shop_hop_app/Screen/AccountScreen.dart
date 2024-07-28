import 'package:flutter/material.dart';
class Accountscreen extends StatefulWidget {
  const Accountscreen({super.key});

  @override
  State<Accountscreen> createState() => _AccountscreenState();
}

class _AccountscreenState extends State<Accountscreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center                                    ,
          children: [

            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(1,1)),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)
              ),
              width: 80,
              height: 80,
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.person, size: 50,color: Colors.black,),
              ),
            ),


            SizedBox(
              height: 20,
            ),

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
            //   password input
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Gander",
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
                  hintText: "Email",
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
                  debugPrint("save profile Clicked");
                },
                child: Text("Save Profile", style: TextStyle(color: Colors.white),),
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
                 debugPrint("Clicked");
                },
                child: Text("Change Password", style: TextStyle(color: Colors.amber[800]),),
              ),
            )


          ],
        )
      ),
    );
  }
}
