import 'package:figmaproject/widgets/redshoseslider.dart';
import 'package:figmaproject/widgets/tabsredshoseslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

int _forredshoseslider = 0;

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Nike Air Max 270 Rea...',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Color(0xff9098B1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.more_vert,
              color: Color(0xff9098B1),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 210,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      _forredshoseslider = value;
                    });
                  },
                  children: [
                    RedShoseSlider(),
                    RedShoseSlider(),
                    RedShoseSlider(),
                    RedShoseSlider(),
                    RedShoseSlider(),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabsRedShoseSlider(tabselected: _forredshoseslider == 0),
                  TabsRedShoseSlider(tabselected: _forredshoseslider == 1),
                  TabsRedShoseSlider(tabselected: _forredshoseslider == 2),
                  TabsRedShoseSlider(tabselected: _forredshoseslider == 3),
                  TabsRedShoseSlider(tabselected: _forredshoseslider == 4),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          'Nike Air Zoom Pegasus 36\n Miami',
                          style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Color(0xff9098B1),
                      ),
                    ],
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
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '\$299,43',
                style: GoogleFonts.poppins(
                  color: Color(0xff40BFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Select Size',
                style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 60,
                child: GridView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 16),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffEBF0FF), width: 1),
                          borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        child: Text(
                          '6',
                          style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Select Color',
                style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 60,
                child: GridView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 16),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffEBF0FF), width: 1),
                          borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                        ),
                        backgroundColor: Color(0xff223263),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Specification',
                    style: GoogleFonts.poppins(
                      color: Color(0xff223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shown:',
                        style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        'Laser\n Blue/Anthracite/Watermel\non/White',
                        style: GoogleFonts.poppins(
                          color: Color(0xff9098B1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Style:',
                        style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        'CD0113-400',
                        style: GoogleFonts.poppins(
                          color: Color(0xff9098B1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'The Nike Air Max 270 React ENG combines a \n full-length React foam midsole with a 270 Max Air \n unit for unrivaled comfort and a striking visual \n experience.',
                    style: GoogleFonts.poppins(
                      color: Color(0xff9098B1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review Product',
                            style: GoogleFonts.poppins(
                              color: Color(0xff223263),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'See More',
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
                        height: 8,
                      ),
                      Row(
                        children: [
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
                          Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Text(
                              '4.5',
                              style: GoogleFonts.poppins(
                                color: Color(0xff9098B1),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Text(
                            '(5 Review)',
                            style: GoogleFonts.poppins(
                              color: Color(0xff9098B1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                  Column(
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
                                color: Color(0xffEBF0FF),
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
                          'air max are always very comfortable fit, clean and \n just perfect in every way. just the box was too small \n and scrunched the sneakers up a little bit, not sure if \n the box was always this small but the 90s are and \n will always be one of my favorites.',
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
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'You Might Also Like',
                    style: GoogleFonts.poppins(
                      color: Color(0xff223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
              Container(
                height: 270,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 500 / 300,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffEBF0FF),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: SingleChildScrollView(
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
              ),
              SizedBox(
                height: 21,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/cartscreen'),
                child: Text('Add To Cart'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff40BFFF),
                  minimumSize: Size(double.infinity, 57),
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
