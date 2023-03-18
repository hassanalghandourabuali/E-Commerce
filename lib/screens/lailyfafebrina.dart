import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LailyfaFebrinaScreen extends StatefulWidget {
  const LailyfaFebrinaScreen({Key? key}) : super(key: key);

  @override
  State<LailyfaFebrinaScreen> createState() => _LailyfaFebrinaScreenState();
}

class _LailyfaFebrinaScreenState extends State<LailyfaFebrinaScreen> {
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
          'Lailyfa Febrina Card',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                child: Divider(
                  color: Color(0xffEBF0FF),
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff40BFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image(
                          image: AssetImage('images/credit.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '6326',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                        Text(
                          '9124',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                        Text(
                          '8124',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                        Text(
                          '9875',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text(
                            'CARD HOLDER',
                            style: GoogleFonts.poppins(
                                color: Color(0xffffffff).withOpacity(0.5),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 38),
                          child: Text(
                            'CARD SAVE',
                            style: GoogleFonts.poppins(
                                color: Color(0xffffffff).withOpacity(0.5),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text(
                            'Lailyfa Febrina',
                            style: GoogleFonts.poppins(
                                color: Color(0xffffffff),
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text(
                            '19/2042',
                            style: GoogleFonts.poppins(
                                color: Color(0xffffffff),
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0,
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
                        hintText: '1231 - 2312 - 3123 - 1231',
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
                                      hintText: '12/12',
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
                                  child: TextField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      hintText: '1219',
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
                          )
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
                        hintText: 'Lailyfa Febrina',
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
                  primary: Color(0xff40BFFF), minimumSize: Size(343, 57)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
