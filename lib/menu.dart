import 'package:flutter/material.dart';

import 'cart.dart';
import 'home.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KFC Menu',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: KFCMenu(),
    );
  }
}

class KFCMenu extends StatefulWidget {
  @override
  _KFCMenuState createState() => _KFCMenuState();
}

class _KFCMenuState extends State<KFCMenu> {
  int _selectedMenuIndex = 0;
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<MenuItem> menuItems = [
    MenuItem(
      name: 'Big 8-Chicken bucket',
      description: 'Hot and crispy Chicken Bucket containing 8 piece ',
      price: {
        '₹': 599,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-PR00000854.jpg?ver=27.49',
    ),
    MenuItem(
      name: 'Zinger Burger',
      description:
          'Delicious crispy chicken fillet on a toasted bun with lettuce and mayo.',
      price: {
        '₹': 179,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-K439.jpg?ver=27.64',
    ),
    MenuItem(
      name: 'Classic Chicken Biryani\nBucket-Large',
      description:
          'Delicious crispy chicken fillet on a toasted bun with lettuce and mayo.',
      price: {
        '₹': 475,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-K624.jpg?ver=27.49',
    ),
    MenuItem(
      name: '2 X Chicken Krisper Burgers',
      description:
          'A deal for the Veg Zinger lovers: Get 1 Veg Zinger, 2 Veg Patties & a Pepsi.',
      price: {
        '₹': 248,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-PR00001025.jpg?ver=27.64',
    ),
    MenuItem(
      name: 'Popcorn Chicken-Large',
      description:
          'Tender bite-sized pieces of 100% chicken breast, perfect for sharing.',
      price: {
        '₹': 248.57,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-K223.jpg?ver=27.49',
    ),
    MenuItem(
      name: 'Popcorn Chicken-Medium',
      description:
          'Tender bite-sized pieces of 100% chicken breast, perfect for sharing.',
      price: {
        '₹': 168,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-K223.jpg?ver=27.49',
    ),
    MenuItem(
      name: 'Popcorn Chicken-Regular',
      description:
          'Tender bite-sized pieces of 100% chicken breast, perfect for sharing.',
      price: {
        '₹': 115,
      },
      photo:
          'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-K223.jpg?ver=27.49',
    ),
    MenuItem(
      name: 'Spicy mix Fries-Large',
      description: 'Crispy fries with a spicy chilli lime sprinkle.',
      price: {
        '₹': 139,
      },
      photo:
          'https://s3.ap-south-1.amazonaws.com/shopnowchat.com/Medium/637963420191418603_SpicyMixFriesLarge.jpg',
    ),
    MenuItem(
      name: 'Spicy mix Fries-Medium',
      description: 'Crispy fries with a spicy chilli lime sprinkle.',
      price: {
        '₹': 114,
      },
      photo:
          'https://s3.ap-south-1.amazonaws.com/shopnowchat.com/Medium/637963420191418603_SpicyMixFriesLarge.jpg',
    ),
    MenuItem(
      name: 'Spicy mix Fries-Regular',
      description: 'Crispy fries with a spicy chilli lime sprinkle.',
      price: {
        '₹': 99,
      },
      photo:
          'https://s3.ap-south-1.amazonaws.com/shopnowchat.com/Medium/637963420191418603_SpicyMixFriesLarge.jpg',
    ),
  ];

  void _onItemSelected2(int index) {
    setState(() {
      _selectedMenuIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('KFC Menu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.network(
                          menuItems[index].photo,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menuItems[index].name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                menuItems[index].description,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              if (menuItems[index].prices != null)
                                ...menuItems[index].prices!.entries.map(
                                      (entry) => Text(
                                        '${entry.key}: ${entry.value}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Add to cart'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 94, 95, 124),
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const home()));
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

class MenuItem {
  final String name;
  final String description;
  final dynamic price; // Can be either a double or a map of prices
  final String photo;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.photo,
  });

  Map<String, dynamic>? get prices =>
      price is Map<String, dynamic> ? price as Map<String, dynamic> : null;
}
