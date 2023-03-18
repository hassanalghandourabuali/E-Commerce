import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class NotificationActivityScreen extends StatefulWidget {
  const NotificationActivityScreen({Key? key}) : super(key: key);

  @override
  State<NotificationActivityScreen> createState() => _NotificationActivityScreenState();
}

class _NotificationActivityScreenState extends State<NotificationActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        leading: TextButton(
          onPressed: () =>
          {Navigator.pushReplacementNamed(context, '/homescreen')},
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Activity',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5),
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
            height: 600,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.shuffle, color: Color(0xff40BFFF)),
                  title: Text(
                    'Transaction Nike Air Zoom Product',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                            letterSpacing: 0.5,
                            height: 2),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'April 30, 2014 1:01 PM',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff223263),
                            letterSpacing: 0.5,
                            height: 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ListTile(
                  leading: Icon(Icons.shuffle, color: Color(0xff40BFFF)),
                  title: Text(
                    'Transaction Nike Air Zoom Pegasus 36 Miami',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                            letterSpacing: 0.5,
                            height: 2),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'April 30, 2014 1:01 PM',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff223263),
                            letterSpacing: 0.5,
                            height: 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ListTile(
                  leading: Icon(Icons.shuffle, color: Color(0xff40BFFF)),
                  title: Text(
                    'Transaction Nike Air Max',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                            letterSpacing: 0.5,
                            height: 2),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'April 30, 2014 1:01 PM',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff223263),
                            letterSpacing: 0.5,
                            height: 2),
                      ),
                    ],
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
