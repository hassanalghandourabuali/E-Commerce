import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAddressScreen extends StatefulWidget {
  const EditAddressScreen({Key? key}) : super(key: key);

  @override
  State<EditAddressScreen> createState() => _EditAddressScreenState();
}

class _EditAddressScreenState extends State<EditAddressScreen> {
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
          'Edit Address',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                        'Country or region',
                        style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
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
                            'United States',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff40BFFF)),
                          ),
                          value: 'US',
                        ),
                        DropdownMenuItem(
                          child: Text('United Kingdom'),
                          value: 'UK',
                        ),
                        DropdownMenuItem(
                          child: Text('Afghanistan'),
                          value: 'AF',
                        ),
                        DropdownMenuItem(
                          child: Text('Albania'),
                          value: 'AL',
                        ),
                        DropdownMenuItem(
                          child: Text('American Samoa'),
                          value: 'AS',
                        ),
                      ],
                      hint: Text('United States'),
                      isExpanded: true,
                      onChanged: (value) {},
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'First Name',
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
                      hintText: 'Ahmed',
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
                      hintText: 'Khaidir',
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
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'Street Address',
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
                      hintText: '7021 Parker Rd undefined',
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
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'Street Address 2 (Optional)',
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
                      hintText: '4333 Edwards Rd undefined',
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
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'City',
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
                      hintText: 'Richardson',
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
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'State/Province/Region',
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
                      hintText: 'Oregon',
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
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'Zip Code',
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: '57793',
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
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text(
                        'Phone Number',
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: '(316) 555-0116',
                      hintStyle: GoogleFonts.poppins(
                          color: Color(0xff9098B1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
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
                ],
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/addaddressscreen'),
                  child: Text(
                    'Save Address',
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
      ),
    );
  }
}
