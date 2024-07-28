import 'package:flutter/material.dart';

class Drawernavigation extends StatefulWidget {
  const Drawernavigation({super.key});

  @override
  State<Drawernavigation> createState() => _DrawernavigationState();
}

class _DrawernavigationState extends State<Drawernavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Drawer navigation bar"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {

            // AlertDialog(
            //   backgroundColor: Colors.grey,
            //   title: const Text("Its working"),
            //   actions: [
            //     TextButton(
            //         onPressed: () {
            //           Navigator.pop(context, 'Yes');
            //         },
            //         child: const Text("Yes")
            //     ),
            //     TextButton(
            //         onPressed: () {
            //           Navigator.pop(context, 'No');
            //         },
            //         child: const Text("No")
            //     )
            //   ],
            // );

          }, child: Text("Alert"),
        ),
      ),




      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 8,
        width: 200,
        shadowColor: Colors.white,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(30))
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
                child: Column(
                  children: [
                    Icon(Icons.person, size: 100, color:Colors.white,),
                    Text("Header Title")
                  ],
                )
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {

                AlertDialog(
                  backgroundColor: Colors.grey,
                  title: Text("Its working"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                        child: Text("Cancel")
                    )
                  ],
                );

                debugPrint("Home option Clicked");
              },
            ),

            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: (){
                debugPrint("Profile option click");
              },
            ),

            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings,),
                onTap: (){
                  debugPrint("Setting option click");
                },
            ),
            ListTile(
                title: Text("Feedback"),
                leading: Icon(Icons.feedback,),
              onTap: (){
                debugPrint("Feedback option click");
              },
            ),
            ListTile(
                title: Text("About"),
                leading: Icon(Icons.info,),
              onTap: (){
                debugPrint("About option click");
              },
            ),

          ],
        ),
      ),
    );
  }
}
