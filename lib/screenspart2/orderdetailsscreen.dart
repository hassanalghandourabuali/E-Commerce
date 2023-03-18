import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
            'Order Details',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xff40BFFF),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xff40BFFF),
                        thickness: 1,
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xff40BFFF),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xff40BFFF),
                        thickness: 1,
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xff40BFFF),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xff40BFFF),
                        thickness: 1,
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xffEBF0FF),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Packing'),
                    Text('Shipping'),
                    Text('Arriving'),
                    Text('Success'),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product',
                      style: GoogleFonts.poppins(
                          color: Color(0xff223263),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image(
                              image: AssetImage('images/image 47.png'),
                            ),
                            title: Text(
                              'Nike Air Zoom Pegasus 36 Miami',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff223263),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                            subtitle: Text(
                              '\$299,43',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff40BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                            trailing: Icon(
                              Icons.favorite,
                              color: Color(0xffFB7181),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffEBF0FF))),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'LQNSU346JK',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff223263),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Order at Lafyuu : August 1, 2017',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff223263),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              thickness: 10,
                              color: Color(0xffEBF0FF),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Status',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  'Shipping',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Items',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  '2 Items purchased',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  '\$299,43',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff40BFFF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffEBF0FF))),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'LQNSU346JK',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff223263),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Order at Lafyuu : August 1, 2017',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff223263),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              thickness: 10,
                              color: Color(0xffEBF0FF),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Status',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  'Shipping',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Items',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  '2 Items purchased',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff223263),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  '\$299,43',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff40BFFF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
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
        ));
  }
}
