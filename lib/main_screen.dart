import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figmaproject/screenspart2/explorescreen.dart';
import 'package:figmaproject/screenspart2/cartscreen.dart';
import 'package:figmaproject/screenspart2/offerscreen.dart';
import 'package:figmaproject/screens/accountscreen.dart';
import 'package:figmaproject/models/forbottomnav.dart';
import 'package:figmaproject/screenspart2/homescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = 0;
  String title = '_selected';
  List<BottomNavigationScreen> _screens = <BottomNavigationScreen>[
    const BottomNavigationScreen(title: 'Home', widget: HomeScreen()),
    const BottomNavigationScreen(title: 'Explore', widget: ExploreScreen()),
    const BottomNavigationScreen(title: 'Your Cart', widget: CartScreen()),
    const BottomNavigationScreen(title: 'Offer', widget: OfferScreen()),
    const BottomNavigationScreen(title: 'Account', widget: AccountScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected,
          type: BottomNavigationBarType.shifting,
          onTap: (int selected) {
            setState(() {
              _selected = selected;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                activeIcon: Icon(Icons.home),
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: 'Explore',
                activeIcon: Icon(Icons.search),
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_outlined),
                label: 'Cart',
                activeIcon: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined),
                label: 'Offer',
                activeIcon: Icon(Icons.local_offer),
                backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Account',
                activeIcon: Icon(Icons.person),
                backgroundColor: Colors.orange),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xff9098B1),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/homescreen');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          title: Text(
            _screens.elementAt(_selected).title,
            style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: _screens.elementAt(_selected).widget);
  }
}
