import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShipToScreen extends StatefulWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  State<ShipToScreen> createState() => _ShipToScreenState();
}

class _ShipToScreenState extends State<ShipToScreen> {
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
          'Ship To',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
          // SizedBox(
          //   height: 32,
          // ),
          Column(
            children: [
              Container(
                height: 500,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffEBF0FF), width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Priscekila',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff223263),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    '3711 Spring Hill Rd undefined Tallahassee,\n Nevada 52874 United States',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff9098B1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    '+99 1234567890',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff9098B1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Edit',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff40BFFF),
                                              minimumSize: Size(77, 57)),
                                        ),
                                        margin: EdgeInsets.only(right: 30),
                                      ),
                                      Icon(Icons.delete_outlined)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ));
                    }),
              ),
            ],
          ),
          SizedBox(
            height: 71,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/shiptoscreen'),
                child: Text(
                  'Next',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff40BFFF),
                    minimumSize: Size(double.infinity, 57)),
              ),
            ),
          ),
          SizedBox(
            height: 37,
          ),
        ],
      ),
    );
  }
}
