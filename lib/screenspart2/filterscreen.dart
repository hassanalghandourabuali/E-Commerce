import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: TextButton(
          onPressed: () =>
          {Navigator.pushReplacementNamed(context, '/homescreen')},
          child: Icon(
            Icons.close,
            size: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Filter Search',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Price Range',
                        style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 175,
                          // margin: EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    hintText: '\$1.245',
                                    hintStyle: GoogleFonts.poppins(
                                        color: Color(0xff9098B1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0.1,
                                        color: Color(0xffebf0ff),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xff40BFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 175,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                              ),
                              Container(
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    hintText: '\$9.344',
                                    hintStyle: GoogleFonts.poppins(
                                        color: Color(0xff9098B1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0.1,
                                        color: Color(0xffebf0ff),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xff40BFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    RangeSlider(
                      values: RangeValues(20, 85),
                      min: 1,
                      max: 100,
                      activeColor: Color(0xff40BFFF),
                      onChanged: (value) {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'MIN',
                          style: GoogleFonts.poppins(
                              color: Color(0xff9098B1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                        Text(
                          'MAX',
                          style: GoogleFonts.poppins(
                              color: Color(0xff9098B1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Condition',
                        style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 65,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'New',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 65,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'Used',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'Not Specified',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Buying Format',
                        style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'All Listings',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 129,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'Accepts Offers',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Auction',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Buy It Now',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Classified Ads',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Item Location',
                        style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'US Only',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 129,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'North America',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Europe',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Asia',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Show Only',
                        style: GoogleFonts.poppins(
                            color: Color(0xff223263),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Free Returns',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'Free Returns',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Authorized Seller',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Completed Items',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 101,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'Sold Items',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Deals & Savings',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 101,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Sale Items',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Sale Items',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 174,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF40BFFF).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              'Search in Description',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Benefits charity',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE5E5E5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Authenticity Verified',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff9098B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style:
                      GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff40BFFF),
                        minimumSize: Size(double.infinity, 57)),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
