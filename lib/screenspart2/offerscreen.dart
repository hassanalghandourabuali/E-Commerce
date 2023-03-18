import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  int _selected = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff40BFFF),
              ),
              width: 343,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Use “MEGSL” Cupon For\n Get 90%off',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(
                            'images/imageshose1.png',
                          ),
                          width: 343,
                        ),
                      ),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(20)
                      // ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32, left: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Super Flash Sale \n 50% Off',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5),
                          ),
                          SizedBox(height: 29,),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                width: 42,
                                height: 41,
                                child: Center(
                                  child: Text(
                                    '08',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff223263),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 4),
                                child: Text(
                                  ':',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                width: 42,
                                height: 41,
                                child: Center(
                                  child: Text(
                                    '34',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff223263),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 4),
                                child: Text(
                                  ':',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                width: 42,
                                height: 41,
                                child: Center(
                                  child: Text(
                                    '52',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff223263),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(
                            'images/imageforshose2.png',
                          ),
                          width: 343,
                        ),
                      ),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(20)
                      // ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32, left: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '90% Off Super Mega \n Sale',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5),
                          ),
                          SizedBox(height: 16,),
                          Text('Special birthday Lafyuu',style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
