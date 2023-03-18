import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          width: 300,
          height: 40,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff40BFFF),
              ),
              hintText: ('Nike Air Max'),
              suffixIcon: Icon(Icons.close),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff40bfff),
                  width: 0.5,
                ),
              ),
              focusColor: Color(0xff40BFFF),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              FontAwesomeIcons.microphone,
              color: Color(0xff9098B1),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: 'Offer'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Divider(
              thickness: 1,
              color: Color(0xffEBF0FF),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Nike Air Max 270 React ENG',
              style: GoogleFonts.poppins(
                  color: Color(0xff9098B1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Nike Air Vapormax 360',
              style: GoogleFonts.poppins(
                  color: Color(0xff9098B1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Nike Air Max 270 React ENG',
              style: GoogleFonts.poppins(
                  color: Color(0xff9098B1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Nike Air Max 270 React',
              style: GoogleFonts.poppins(
                  color: Color(0xff9098B1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Nike Air VaporMax Flyknit 3',
              style: GoogleFonts.poppins(
                  color: Color(0xff9098B1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Nike Air Max 97 Utility',
              style: GoogleFonts.poppins(
                  color: Color(0xff9098B1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
