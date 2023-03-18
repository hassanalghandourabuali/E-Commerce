import 'package:flutter/material.dart';

class ForOnBoardingScreen extends StatelessWidget {
  const ForOnBoardingScreen({
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    Key? key,
  }) : super(key: key);
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32, right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(
            height: 16,
          ),
          Text(
            text1,
            style: TextStyle(
                color: Color(0xff23203F),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            text2,
            style: TextStyle(
              color: Color(0xff716F87),
              fontSize: 17,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
          ),
          Text(
            text3,
            style: TextStyle(
              color: Color(0xff716F87),
              fontSize: 17,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
          ),
          Text(
            text4,
            style: TextStyle(
              color: Color(0xff716F87),
              fontSize: 17,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
