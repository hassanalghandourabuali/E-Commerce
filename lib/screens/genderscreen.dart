import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
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
          'Gender',
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
                      'Choose Gender',
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEBF0FF)),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton(
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Male',
                          style: GoogleFonts.poppins(),
                        ),
                        value: 'M',
                      ),
                      DropdownMenuItem(
                        child: Text('Femal'),
                        value: 'F',
                      ),
                      DropdownMenuItem(
                        child: Text('Other'),
                        value: 'O',
                      ),
                    ],
                    hint: Text('Male'),
                    isExpanded: true,
                    onChanged: (value) {},
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  height: 24,
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
