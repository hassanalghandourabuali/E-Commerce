import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 15,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Add Card',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xfffb7181), width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Color(0xfffb7181),
                            radius: 10,
                            child: Center(
                              child: Text(
                                '!',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Security Code Is Wrong',
                          style: TextStyle(color: Color(0xfffb7181)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text(
                          'Card Number',
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
                        hintText: 'Enter Card Number',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160,
                            // margin: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Expiration Date',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff223263),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  child: TextField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      hintText: 'Expiration Date',
                                      hintStyle: GoogleFonts.poppins(
                                          color: Color(0xff9098B1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
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
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 160,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Security Code',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff223263),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                    child: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Error Number';
                                      }
                                    },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      hintText: 'Security Code',
                                      hintStyle: GoogleFonts.poppins(
                                          color: Color(0xff9098B1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
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
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text(
                          'Card Holder',
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
                        hintText: 'Enter Card Number',
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
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/addcardscreen'),
                    child: Text(
                      'Add card',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff40BFFF),
                        minimumSize: Size(double.infinity, 57)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
