import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _counter = 0;
  int _selected = 0;
  String _title = '_selected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 280,
                    child: ListView.builder(
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              leading: Image(
                                image: AssetImage('images/image 47.png'),
                              ),
                              title: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 6,
                                    ),
                                    child: Container(
                                      child: Text(
                                        'Nike Air Zoom Pegasus\n 36 Miami',
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff223263),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Color(0xffFB7181),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            showmyalert();
                                          },
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: Color(0xff9098B1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$299.43',
                                      style: TextStyle(
                                          color: Color(0xff40BFFF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffEBF0FF),
                                                width: 1),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomLeft: Radius.circular(
                                                5,
                                              ),
                                            ),
                                          ),
                                          width: 32,
                                          height: 40,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                --_counter;
                                              });
                                            },
                                            child: Icon(
                                              FontAwesomeIcons.minus,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          color: Color(0xffEBF0FF),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              '$_counter',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffEBF0FF),
                                                width: 1),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(
                                                5,
                                              ),
                                            ),
                                          ),
                                          width: 32,
                                          height: 40,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                ++_counter;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Flexible(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Your Cupon Is Not Correct';
                              }
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter Cupon Code',
                              hintStyle: GoogleFonts.poppins(
                                color: Color(0xff9098B1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.grey.shade400,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0),
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Check Out',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff40BFFF),
                              minimumSize: Size(50, 65)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEBF0FF), width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Items (3)',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                              Text(
                                '\$598.86',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
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
                                'Shipping',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                              Text(
                                '\$40.00',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
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
                                'Import charges',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                              Text(
                                '\$128.00',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            child: Divider(
                              thickness: 1,
                              color: Color(0xffEBF0FF),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Price',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),
                              ),
                              Text(
                                '\$766.86',
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
                height: 16,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Check Out',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff40BFFF),
                      minimumSize: Size(double.infinity, 57)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void showAlertDialog(){
  //   showDialog(context: context, builder: (context){
  //     return Column(children: [
  //       AlertDialog()
  //     ],);
  //   });
  // }
  void showmyalert() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.blueAccent.withOpacity(0.1),
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          content: Text('Are you sure delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'No',
                style: TextStyle(color: Colors.red.shade400),
              ),
            ),
          ],
        );
      },
    );
  }
}
