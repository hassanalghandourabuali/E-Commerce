import 'package:figmaproject/widgets/fortabsshsetow.dart';
import 'package:figmaproject/widgets/slidertabsshose.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _countershose = 0;
  int _counter = 0;
  int _selected = 0;
  String _title = '_selected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   // leading: TextButton(
      //   //   onPressed: () =>
      //   //   {Navigator.pushReplacementNamed(context, '/homescreen')},
      //   //   child: Icon(
      //   //     Icons.arrow_back_ios,
      //   //     size: 20,
      //   //   ),
      //   // ),
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Color(0xff9098B1),
      //   elevation: 0,
      //   title: Text(
      //     'Home Screen',
      //     style: GoogleFonts.poppins(
      //         color: Color(0xff223263),
      //         fontSize: 16,
      //         fontWeight: FontWeight.w700),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Scrollbar(
            thickness: 10,
            thumbVisibility: false,
            showTrackOnHover: false,
            radius: Radius.circular(10),
            // controller: ScrollController,
            child: Column(
              children: [
                Container(
                  height: 210,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        _countershose = value;
                      });
                    },
                    children: [
                      SliderTabsShose(),
                      SliderTabsShose(),
                      SliderTabsShose(),
                      SliderTabsShose(),
                      SliderTabsShose(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ForTabsShoseTow(forselectshose: _countershose == 0),
                    ForTabsShoseTow(forselectshose: _countershose == 1),
                    ForTabsShoseTow(forselectshose: _countershose == 2),
                    ForTabsShoseTow(forselectshose: _countershose == 3),
                    ForTabsShoseTow(forselectshose: _countershose == 4),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: GoogleFonts.poppins(
                              color: Color(0xff223263),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'More Category',
                            style: GoogleFonts.poppins(
                              color: Color(0xff40BFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: GridView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                        border: Border.all(
                                            color: Color(0xffEBF0FF)),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Man Shirt')
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flash Sale',
                            style: GoogleFonts.poppins(
                                color: Color(0xff223263),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/productdetailscreen');
                            },
                            child: Text(
                              'See More',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 272,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          // physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 350 / 250,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                          ),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEBF0FF), width: 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: AssetImage('images/shose6.png'),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Nike Air Max 270 \n React ENG',
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
                                            margin: EdgeInsets.only(right: 8),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mega Sale',
                            style: GoogleFonts.poppins(
                                color: Color(0xff223263),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5),
                          ),
                          Text(
                            'See More',
                            style: GoogleFonts.poppins(
                                color: Color(0xff40BFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 302,
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            // physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 380 / 250,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                // width: 140,
                                // height: 300,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEBF0FF), width: 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: AssetImage('images/shose5.png'),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Nike Air Max 270 \n React ENG',
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
                                            margin: EdgeInsets.only(right: 8),
                                          ),
                                          Icon(
                                            Icons.delete_outline,
                                            size: 18,
                                            color: Color(0xff9098B1),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
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
                                    'Recomended \n Product',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'We recommend the best for you',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          height: 530,
                          child: GridView.builder(
                            itemCount: 4,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 200 / 320,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 260,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/shosesport.png'),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Nike Air Max 270 \n React ENG',
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
                                          margin: EdgeInsets.only(right: 8),
                                        ),
                                        Icon(
                                          Icons.delete_outline,
                                          size: 18,
                                          color: Color(0xff9098B1),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
