import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
          'Notification',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
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
                  leading: Icon(Icons.sell_outlined, color: Color(0xff40BFFF)),
                  title: Text(
                    'Offer',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  trailing: CircleAvatar(
                    child: Text('2'),
                    radius: 15,
                    backgroundColor: Color(0xffFB7181),
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                ListTile(
                  leading: Icon(Icons.text_snippet, color: Color(0xff40BFFF)),
                  title: Text(
                    'Feed',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff223263)),
                  ),
                  trailing: CircleAvatar(
                    child: Text('3'),
                    radius: 15,
                    backgroundColor: Color(0xffFB7181),
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                ListTile(
                  leading:
                      Icon(FontAwesomeIcons.bell, color: Color(0xff40BFFF)),
                  title: Text(
                    'Acivity',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff223263)),
                  ),
                  trailing: CircleAvatar(
                    child: Text('3'),
                    radius: 15,
                    backgroundColor: Color(0xffFB7181),
                    foregroundColor: Colors.white,
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
