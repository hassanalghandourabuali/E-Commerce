import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ReviewProductScreen extends StatefulWidget {
  const ReviewProductScreen({Key? key}) : super(key: key);

  @override
  State<ReviewProductScreen> createState() => _ReviewProductScreenState();
}

class _ReviewProductScreenState extends State<ReviewProductScreen> {
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
          '5 Review',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 70,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff40BFFF).withOpacity(0.2),
                    ),
                    width: 40,
                    height: 20,
                    child: Center(
                      child: Text(
                        'All Review',
                        style: GoogleFonts.poppins(
                            color: Color(0xff40BFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 1550,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, mainAxisSpacing: 0),
                      itemBuilder: (context,index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              color: Colors.transparent,
                              elevation: 0,
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage('images/profile.png'),
                                ),
                                title: Text(
                                  'James Lawson',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                                subtitle: Row(
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
                                      color: Color(0xffFFC833),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'images/forshose1.png',
                                  ),
                                  width: 72,
                                  height: 72,
                                ),
                                Image(
                                  image: AssetImage(
                                    'images/forshose1.png',
                                  ),
                                  width: 72,
                                  height: 72,
                                ),
                                Image(
                                  image: AssetImage(
                                    'images/forshose1.png',
                                  ),
                                  width: 72,
                                  height: 72,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                'December 10, 2016',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ],
                        );
                      }),
                  Container(
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/signinscreen'),
                      child: Text('Write Review'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff40BFFF),
                        minimumSize: Size(double.infinity, 57),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
