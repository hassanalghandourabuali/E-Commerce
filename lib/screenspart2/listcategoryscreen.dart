import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ListCategoryScreen extends StatefulWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ListCategoryScreen> createState() => _ListCategoryScreenState();
}

class _ListCategoryScreenState extends State<ListCategoryScreen> {
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
          'Category',
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
              height: 720,
              child: ListView.builder(
                itemCount: 13,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:
                    Icon(FontAwesomeIcons.shirt, color: Color(0xff40BFFF)),
                    title: Text(
                      'Shirt',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff223263),
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
