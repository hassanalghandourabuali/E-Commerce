import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchResultGridScreen extends StatefulWidget {
  const SearchResultGridScreen({Key? key}) : super(key: key);

  @override
  State<SearchResultGridScreen> createState() => _SearchResultGridScreenState();
}

class _SearchResultGridScreenState extends State<SearchResultGridScreen> {
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
              hintText: ('Nike Air Max'),
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
              FontAwesomeIcons.arrowDownShortWide,
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
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          height: 700,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0 Result'),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text('Nike Shoes'),
                          value: 'N-S',
                        ),DropdownMenuItem(
                          child: Text('Fila Shoes'),
                          value: 'F-S',
                        ),DropdownMenuItem(
                          child: Text('Addidas Shoes'),
                          value: 'A-S',
                        ),
                      ],
                      hint: Text('Man Shoes'),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  // scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 165 / 282),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('images/shosesport.png'),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Nike Air Max 270 React ENG',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff223263),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.5),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.solidStar,
                                  size: 12,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  FontAwesomeIcons.solidStar,
                                  size: 12,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  FontAwesomeIcons.solidStar,
                                  size: 12,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  FontAwesomeIcons.solidStar,
                                  size: 12,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  FontAwesomeIcons.solidStar,
                                  size: 12,
                                  color: Color(0xffEBF0FF),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '\$299,43',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    '\$534,33',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff9098B1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  margin: EdgeInsets.only(right: 8),
                                ),
                                Container(
                                  child: Text(
                                    '24% Off',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xffFB7181),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
