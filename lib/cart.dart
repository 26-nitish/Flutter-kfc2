import 'package:flutter/material.dart';
import 'package:kfc/main.dart';
import 'home.dart';
import 'login.dart';
import 'menu.dart';

void main() => runApp(new MaterialApp(
      home: MyCartPage(),
    ));

class MyCartPage extends StatelessWidget {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 247, 245, 259),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 550,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    "https://i.imgur.com/v4xOtCj.png",
                    height: 490,
                    width: 450,
                    fit: BoxFit.fill,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KFCMenu()),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 214, 38, 38),
                      ),
                      child: Center(child: Text('Start Order')),
                    ),
                  ),
                  // ElevatedButton(
                  // child: Text('Start Order'),
                  //      onPressed: () {},
                  //  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 210, 25, 25),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined),
              label: 'Order',
              backgroundColor: Color.fromARGB(255, 210, 25, 25),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'cart',
              backgroundColor: Color.fromARGB(255, 210, 25, 25),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => home()));
                break;
              case 1:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => KFCMenu()));
                break;
              case 2:
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyCartPage()));
                break;
              case 3:
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignInScreen()));
                break;
            }
          }),
    );
  }
}
