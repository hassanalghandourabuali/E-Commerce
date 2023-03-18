import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  int _selected = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xff9098B1),
          elevation: 0,
          title: Container(
            margin: EdgeInsets.only(left: 10, top: 16),
            width: 270,
            height: 40,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff40BFFF),
                ),
                hintText: ('Search Product'),contentPadding: EdgeInsets.only(top: 8),
                hintStyle: GoogleFonts.poppins(fontSize: 12, color: Color(0xff9098B1),fontWeight: FontWeight.w400),
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
              padding: const EdgeInsets.only(top: 16,right: 16),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xff9098B1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16,right: 16),
              child: Icon(
                FontAwesomeIcons.bell,
                color: Color(0xff9098B1),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Man Fashion',
                      style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 200,
                      child: GridView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,

                          ),
                          itemBuilder: (context, index) {
                            return Card(
                                color: Colors.transparent,
                                elevation: 0,
                                child: Column(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        child: Image(
                                          image: AssetImage('images/Vector.png'),
                                        ),
                                        radius: 28,
                                        backgroundColor: Colors.transparent,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffEBF0FF)),
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('Man Shirt')
                                  ],
                                ));
                          }),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Wommen Fashion',
                      style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 200,
                      child: GridView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index) {
                            return Card(
                                color: Colors.transparent,
                                elevation: 0,
                                child: Column(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        child: Image(
                                          image: AssetImage('images/Vector.png'),
                                        ),
                                        radius: 28,
                                        backgroundColor: Colors.transparent,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xffEBF0FF)),
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                    // Container(
                                    //   height: 50,
                                    //   width: 50,
                                    //   decoration: BoxDecoration(
                                    //     color: Color(0xffEBF0FF),
                                    //     shape: BoxShape.circle,
                                    //   ),
                                    //   child: Padding(
                                    //     padding: EdgeInsets.all(3.0),
                                    //     child: Container(
                                    //       decoration: BoxDecoration(
                                    //         color: Colors.white,
                                    //         shape: BoxShape.circle,
                                    //       ),
                                    //       child: CircleAvatar(
                                    //         child: Image(
                                    //           image:
                                    //               AssetImage('images/Vector.png'),
                                    //         ),
                                    //         backgroundColor: Colors.transparent,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('Man Shirt')
                                  ],
                                ));
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
