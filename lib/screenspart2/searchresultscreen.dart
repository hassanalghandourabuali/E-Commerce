import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          width: 270,
          height: 40,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff40BFFF),
              ),
              hintText: ('Search Product'),
              suffixIcon: Icon(Icons.close),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff40bfff),
                  width: 0.5,
                ),
              ),
              focusColor: Color(0xff40BFFF),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Color(0xff9098B1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              FontAwesomeIcons.filter,
              color: Color(0xff9098B1),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Color(0xffEBF0FF),
              thickness: 1,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0 Result'),
                DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text('Nike Shoes'),
                      value: 'N-S',
                    ),
                    DropdownMenuItem(
                      child: Text('Fila Shoes'),
                      value: 'F-S',
                    ),
                    DropdownMenuItem(
                      child: Text('Addidas Shoes'),
                      value: 'A-S',
                    ),
                  ],
                  hint: Text('Man Shoes'),
                  onChanged: (value) {},
                ),
              ],
            ),
            SizedBox(
              height: 132,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'images/error.png',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Product Not Found',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff223263),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'thank you for shopping using lafyuu',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9098B1),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/homescreen'),
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff40BFFF),
                    minimumSize: Size(360, 57),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
