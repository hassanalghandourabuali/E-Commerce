import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
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
          'Write Review',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Please write Overall level of satisfaction with your shipping / Delivery Service',
              style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    size: 32,
                    color: Color(0xffFFC833),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    size: 32,
                    color: Color(0xffFFC833),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    size: 32,
                    color: Color(0xffFFC833),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    size: 32,
                    color: Color(0xffFFC833),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    size: 32,
                    color: Color(0xffEBF0FF),
                  ),
                ),
                Text(
                  '4/5',
                  style: GoogleFonts.poppins(
                      color: Color(0xff9098B1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Write Your Review',
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
                width: 343,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffEBF0FF),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Write your review here',
                        hintStyle: GoogleFonts.poppins(
                          color: Color(0xff9098B1),
                        ),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          //   borderSide: BorderSide(
                          //     color: Color(0xff40BFFF),width: 1
                          // ),
                        )),
                  ),
                )),
            // Container(
            //   width: 343,
            //   height: 160,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Color(0xffEBF0FF),
            //     ),
            //     borderRadius: BorderRadius.circular(5)
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Text(
            //       'Write your review here',
            //       style: GoogleFonts.poppins(
            //           color: Color(0xff9098B1),
            //           fontSize: 12,
            //           fontWeight: FontWeight.w400,
            //           letterSpacing: 0.5),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Add Photo',
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
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffEBF0FF),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(
                Icons.add,
                color: Color(0xff9098B1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
