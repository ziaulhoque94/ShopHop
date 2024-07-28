import 'package:flutter/material.dart';

class DrawerHeaderSection extends StatelessWidget {
  const DrawerHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Colors.white,
      elevation: 10,
      width: 250,

      child: ListView(
        children: [
          DrawerHeader(

            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.white,
                      offset: Offset(1, 1))
                    ]
                  ),
                  child: const CircleAvatar(
                    child: Icon(Icons.person, weight: 400, color: Colors.black,),
                  ),
                ),

                const Text("Guest User", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

              ],
            )
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            color: Colors.grey[100],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("08", style: TextStyle(color: Colors.amber, fontSize: 15),),
                    Text("07", style: TextStyle(color: Colors.amber, fontSize: 15)),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("My Order", style: TextStyle(color: Colors.black, fontSize: 15),),
                    Text("Wishlist", style: TextStyle(color: Colors.black, fontSize: 15)),
                  ],
                ),
              ],
            )
          ),

        //   Categories item
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.grey[100],
            child: const Column(
              children: [

                ListTile(
                  leading: Icon(Icons.person, color: Colors.black12,),
                  title: Text("Men"),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.black12,),
                  title: Text("Women"),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.black12,),
                  title: Text("Baby & Kids"),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag, color: Colors.black12,),
                  title: Text("Bags"),
                ),
                ListTile(
                  leading: Icon(Icons.lightbulb, color: Colors.black12,),
                  title: Text("decor"),
                ),
                ListTile(
                  leading: Icon(Icons.sports_baseball_outlined, color: Colors.black12,),
                  title: Text("Sport"),
                ),


              ],
            ),
          ),


          //   Account Related item
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.grey[100],
            child: const Column(
              children: [

                ListTile(
                  leading: Icon(Icons.person, color: Colors.black12,),
                  title: Text("Account"),
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.black12,),
                  title: Text("Settings"),
                ),
              ],
            ),
          ),

          //   Account Related item
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.grey[100],
            child: const Column(
              children: [

                ListTile(
                  leading: Icon(Icons.feedback, color: Colors.black12,),
                  title: Text("FAQ"),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.black12,),
                  title: Text("Contact us"),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(100),
                boxShadow: const[
                  BoxShadow(color: Colors.white),
                ]
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.energy_savings_leaf_outlined, color: Colors.amber,),
                  Text("ShopHop", style: TextStyle(color: Colors.amber),),
                  Text("v.1.0"),
                ],
              ),
            ),
          ),

         const SizedBox(
            height: 50,
          )

        ],
      ),
    );
  }
}
