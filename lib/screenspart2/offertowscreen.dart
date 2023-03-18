import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class OfferTowScreen extends StatefulWidget {
  const OfferTowScreen({Key? key}) : super(key: key);

  @override
  State<OfferTowScreen> createState() => _OfferTowScreenState();
}

class _OfferTowScreenState extends State<OfferTowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Super Flash Sale',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: 'Offer'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(
                              'images/imageshose1.png',
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
                              'Super Flash Sale \n 50% Off',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  width: 42,
                                  height: 41,
                                  child: Center(
                                    child: Text(
                                      '08',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff223263),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  width: 42,
                                  height: 41,
                                  child: Center(
                                    child: Text(
                                      '34',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff223263),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                  child: Text(
                                    ':',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  width: 42,
                                  height: 41,
                                  child: Center(
                                    child: Text(
                                      '52',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff223263),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 610,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 165 / 282),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffEBF0FF),width: 1),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
