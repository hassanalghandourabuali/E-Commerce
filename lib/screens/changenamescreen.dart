import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeNameScreen extends StatefulWidget {
  const ChangeNameScreen({Key? key}) : super(key: key);

  @override
  State<ChangeNameScreen> createState() => _ChangeNameScreenState();
}

class _ChangeNameScreenState extends State<ChangeNameScreen> {
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
          'Name',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      'Name',
                      style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    hintText: 'Maximus',
                    hintStyle: GoogleFonts.poppins(
                        color: Color(0xff9098B1),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.1,
                        color: Color(0xffEBF0FF),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      'Last Name',
                      style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    hintText: 'Gold',
                    hintStyle: GoogleFonts.poppins(
                        color: Color(0xff9098B1),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.1,
                        color: Color(0xffebf0ff),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff40BFFF),
                    minimumSize: Size(double.infinity, 57)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
