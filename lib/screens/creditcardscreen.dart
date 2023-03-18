import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
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
          'Credit Card And Debit',
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff5C61F4),
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
            ],
          ),
          Container(
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/addcardscreen'),
              child: Text(
                'Add card',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff40BFFF), minimumSize: Size(343, 57)),
            ),
          ),
        ],
      ),
    );
  }
}
