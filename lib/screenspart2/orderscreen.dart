import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
            'Order',
            style: GoogleFonts.poppins(
                color: Color(0xff223263),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEBF0FF))
                    ),
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
                              Text('Order Status',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),),
                              Text('Shipping',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Items',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),),
                              Text('2 Items purchased',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Price',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),),
                              Text('\$299,43',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff40BFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEBF0FF))
                    ),
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
                              Text('Order Status',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),),
                              Text('Shipping',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Items',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),),
                              Text('2 Items purchased',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Price',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),),
                              Text('\$299,43',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff40BFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
