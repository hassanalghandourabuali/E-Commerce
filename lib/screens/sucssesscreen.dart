import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class SucssesScreen extends StatefulWidget {
  const SucssesScreen({Key? key}) : super(key: key);

  @override
  State<SucssesScreen> createState() => _SucssesScreenState();
}

class _SucssesScreenState extends State<SucssesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/checktrue.png'),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Success',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'thank you for shopping using lafyuu',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff223263).withOpacity(.5)),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/orderscreen'),
                child: Text(
                  'Back To Order',
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff40BFFF),
                    minimumSize: Size(double.infinity, 57)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
