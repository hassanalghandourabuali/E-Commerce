import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class FavoriteProductScreen extends StatefulWidget {
  const FavoriteProductScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteProductScreen> createState() => _FavoriteProductScreenState();
}

class _FavoriteProductScreenState extends State<FavoriteProductScreen> {
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
          'Favorite Product',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: Color(0xffEBF0FF),
                thickness: 1,
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
                            border:
                                Border.all(color: Color(0xffEBF0FF), width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
