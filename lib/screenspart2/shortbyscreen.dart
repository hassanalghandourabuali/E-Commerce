import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortByScreen extends StatefulWidget {
  const ShortByScreen({Key? key}) : super(key: key);

  @override
  State<ShortByScreen> createState() => _ShortByScreenState();
}

class _ShortByScreenState extends State<ShortByScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: TextButton(
          onPressed: () =>
              {Navigator.pushReplacementNamed(context, '/homescreen')},
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Shory By',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Best Match',
              style: GoogleFonts.poppins(
                  color: Color(0xff40BFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Text(
                'Time: ending soonest',
                style: GoogleFonts.poppins(
                    color: Color(0xff223263),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Time: newly listed',
              style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Price + Shipping: lowest first',
              style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Price + Shipping: highest first',
              style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Distance: nearest first',
              style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
