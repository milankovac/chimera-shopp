import 'package:chimera/pages/cart.dart';
import 'package:chimera/pages/home.dart';
import 'package:chimera/pages/shop.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

int _selectedIndex = 1;

class _NavigationState extends State<Navigation> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        if (_selectedIndex != 0) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRight, child: ShopPage()));
        }
        break;
      case 1:
        if (_selectedIndex != 1) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop, child: HomePage()));
        }
        break;
      case 2:
        if (_selectedIndex != 2) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft, child: CartPage()));
        }
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color selected = HexColor('#f0a949');
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag,
              color: _selectedIndex == 0 ? selected : Colors.white),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
              color: _selectedIndex == 1 ? selected : Colors.white),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
                color: _selectedIndex == 2 ? selected : Colors.white),
            label: 'Cart'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: selected,
      onTap: _onItemTapped,
    );
  }
}
