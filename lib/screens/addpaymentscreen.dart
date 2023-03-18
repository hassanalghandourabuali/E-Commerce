import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
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
          'Payment',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      // backgroundColor: Color(0xff40bfff),
      body: Column(
        children: [
          Container(
            child: Divider(
              color: Color(0xffEBF0FF),
              thickness: 1,
            ),
          ),
          Container(
            height: 400,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(FontAwesomeIcons.creditCard,
                      color: Color(0xff40BFFF)),
                  title: Text(
                    'Credit Card Or Debit',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                ),
                ListTile(
                  leading:
                      Icon(FontAwesomeIcons.paypal, color: Color(0xff40BFFF)),
                  title: Text(
                    'Paypal',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff223263)),
                  ),
                ),
                ListTile(
                  leading:
                      Icon(FontAwesomeIcons.bank, color: Color(0xff40BFFF)),
                  title: Text(
                    'Bank Transfer',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff223263)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
