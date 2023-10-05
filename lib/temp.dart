// import 'package:flutter/material.dart';
// import 'home.dart';
// import 'cart.dart';
// import 'login.dart';

// void main() => runApp(new MaterialApp(
//       home: MyCartPage(),
//     ));

// class MyCartPage extends StatelessWidget {
//   int _selectedIndex = 2;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.only(top: 40, left: 20),
//             child: const Text(
//               'My Cart',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               width: 550,
//               height: 20,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.network(
//                     "https://i.imgur.com/v4xOtCj.png",
//                     height: 500,
//                     width: 400,
//                     fit: BoxFit.fill,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const home()),
//                       );
//                     },
//                     child: Container(
//                       width: 200,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Color.fromARGB(255, 214, 38, 38),
//                       ),
//                       child: Center(child: Text('Start Order')),
//                     ),
//                   ),
//                   // ElevatedButton(
//                   // child: Text('Start Order'),
//                   //      onPressed: () {},
//                   //  ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//               backgroundColor: Color.fromARGB(255, 94, 95, 124),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.food_bank_outlined),
//               label: 'Order',
//               backgroundColor: Colors.green,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_box),
//               label: 'account',
//               backgroundColor: Color.fromARGB(255, 171, 126, 179),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: 'Cart',
//               backgroundColor: Color.fromARGB(255, 218, 136, 163),
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.grey,
//           backgroundColor: Colors.black,
//           onTap: (index) {
//             switch (index) {
//               case 0:
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => const home()));
//                 break;
//               case 1:
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => SignInScreen()));
//                 break;
//               case 2:
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => MyCartPage()));
//                 break;
//               case 3:
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => home()));
//                 break;
//             }
//           }),
//     );
//   }
// }
