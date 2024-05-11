import 'package:flutter/material.dart';
import 'package:stylishapp/Pages/homepage.dart';
import 'package:stylishapp/Pages/wishlistscreen.dart';
import 'package:stylishapp/Views/Shopping/shopping.dart';

class ButtonView extends StatefulWidget {
  const ButtonView({super.key});

  @override
  State<ButtonView> createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView> {
  int currentIndex = 0;
  final List screen = [
    const HomePage(),
    const WishListScreen(),
    const Text("Search"),
    const Text("Setting"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screen.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        iconSize: 26,
        selectedItemColor:const Color(0xffEB3030),
        unselectedItemColor: Colors.black,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Wishlist',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search'
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const Shopping())
            );
          });
        },
        child: Icon(Icons.shopping_cart_outlined, 
        color: Colors.black, 
        size: 26,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}