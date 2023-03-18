import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class DeleteAddressScreen extends StatefulWidget {
  const DeleteAddressScreen({Key? key}) : super(key: key);

  @override
  State<DeleteAddressScreen> createState() => _DeleteAddressScreenState();
}

class _DeleteAddressScreenState extends State<DeleteAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/img3.jpeg'),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Confirmation',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Are you sure wanna delete address',
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
                onPressed: () => Navigator.pushNamed(context, '/deleteaddressscreen'),
                child: Text(
                  'Delete',
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff40BFFF),
                    minimumSize: Size(double.infinity, 57)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff9098B1)),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xffebf0ff))),
                  primary: Colors.transparent,
                  elevation: 0,
                  minimumSize: Size(double.infinity, 57),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
