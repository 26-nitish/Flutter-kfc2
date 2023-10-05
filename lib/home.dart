import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:kfc/main.dart';
// import 'dart:math';
import 'Carousel.dart';
import 'cart.dart';
import 'login.dart';
import 'menu.dart';

void main() => runApp(const home());

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KFC Menu',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  int _currentImageIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> _imageUrls = [
    "https://im1.dineout.co.in/images/uploads/restaurant/sharpen/9/d/r/m9-15578310235cda9d6f13871.jpg?tr=tr:n-xlarge",
    "https://cdn.grabon.in/gograbon/images/merchant/1536747990676.png",
    "https://b.zmtcdn.com/data/menus/931/931/36f8a3b9e5dbf6435f903c9a8745bcc8.jpg",
    "https://lh3.googleusercontent.com/w5OINNxcmefxLLMYcN2a07FdJ3BLh4wDmNCXoz9cNvLDVT5YWPGSjCEZ6QjeGWzWStnNRQPDhKP9SYB5EmXT45Jbl8ng=w512-rw",
  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped2(int index) {
    setState(() {
      _currentImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx > 150) {
                    // swipe right, show previous image
                    setState(() {
                      _currentImageIndex =
                          (_currentImageIndex - 1) % _imageUrls.length;
                    });
                  } else if (details.delta.dx < 200) {
                    // swipe left, show next image
                    setState(() {
                      _currentImageIndex =
                          (_currentImageIndex + 1) % _imageUrls.length;
                    });
                  }
                },
                child: Expanded(child: Carousel()),
              ),
              SizedBox(height: 60),
              Text(
                "Exclusive Deals ",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 218, 208, 208),
                  ),
                  child: Center(child: Text('Delivery')),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KFCMenu()),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 218, 208, 208),
                    ),
                    child: Center(child: Text('Dine-In')),
                  ),
                ),
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
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 218, 208, 208),
                  ),
                  child: Center(child: Text('Pickup')),
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: 550,
                height: 100,
                alignment: Alignment.centerLeft,
                child: Center(
                    child: Text(
                  'Browse Categories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                )),
              ),
              Padding(
                padding: EdgeInsets.all(16),
              ),
              Container(
                width: 550,
                height: 900,
                alignment: Alignment.center,
                decoration: BoxDecoration(),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "https://i.imgur.com/VR4JgPO.jpeg",
                        height: 900,
                        width: 400,
                        fit: BoxFit.fill,
                      )
                    ]),
              ),
            ],
          ),
        ),
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
              backgroundColor: Color.fromARGB(255, 218, 136, 163),
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
