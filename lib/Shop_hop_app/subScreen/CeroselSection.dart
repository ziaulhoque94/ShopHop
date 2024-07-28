 import 'package:flutter/material.dart';



class Ceroselsection extends StatelessWidget {
  const Ceroselsection({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller=PageController();
    return PageView(
      reverse: true,
      controller: _controller,
      children: [
      Container(
              width: MediaQuery.of(context).size.width * double.infinity,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width * double.infinity,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width * double.infinity,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width * double.infinity,
              height: 50,
              color: Colors.grey,
            ),
            Container(
              width: MediaQuery.of(context).size.width * double.infinity,
              height: 50,
              color: Colors.orange,
            ),
      ],
    );
  }
}






















// class Ceroselsection extends StatelessWidget {
//   const Ceroselsection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 5,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: const TabBar(
//             tabs: <Widget>[
//               Tab(
//                 child: Text("."),
//               ),
//               Tab(
//                 child: Text("."),
//               ),
//               Tab(
//                 child: Text("."),
//               ),
//               Tab(
//                 child: Text("."),
//               ),
//               Tab(
//                 child: Text("."),
//               ),
//
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children:<Widget> [
//             Container(
//               width: MediaQuery.of(context).size.width * double.infinity,
//               height: 50,
//               color: Colors.amber,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * double.infinity,
//               height: 50,
//               color: Colors.blue,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * double.infinity,
//               height: 50,
//               color: Colors.green,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * double.infinity,
//               height: 50,
//               color: Colors.grey,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * double.infinity,
//               height: 50,
//               color: Colors.orange,
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
