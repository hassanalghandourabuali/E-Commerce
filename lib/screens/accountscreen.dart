import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

int _selected = 0;

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
                  leading:
                      Icon(FontAwesomeIcons.user, color: Color(0xff40BFFF)),
                  title: TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/profilescreen'),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Profile',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223263),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading:
                      Icon(FontAwesomeIcons.shop, color: Color(0xff40BFFF)),
                  title: TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/orderscreen'),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Order',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223263),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.mapMarkedAlt,
                      color: Color(0xff40BFFF)),
                  title: TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/addressscreen'),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Address',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223263),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.moneyCheck,
                    color: Color(0xff40BFFF),
                  ),
                  title: TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/paymentmethodscreen'),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Payment',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223263),
                        ),
                      ),
                    ),
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
