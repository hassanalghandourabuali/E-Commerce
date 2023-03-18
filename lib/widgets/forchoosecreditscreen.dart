import 'package:flutter/material.dart';

class ForChooseCreditScreen extends StatelessWidget {
  const ForChooseCreditScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Divider(
            color: Color(0xffEBF0FF),
            thickness: 1,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xff40BFFF),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image(
                    image: AssetImage('images/credit.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '6326',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
                  ),
                  Text(
                    '9124',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
                  ),
                  Text(
                    '8124',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
                  ),
                  Text(
                    '9875',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
                  ),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      'CARD HOLDER',
                      style: TextStyle(
                          color: Color(0xffffffff).withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 38),
                    child: Text(
                      'CARD SAVE',
                      style: TextStyle(
                          color: Color(0xffffffff).withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      'Lailyfa Febrina',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text(
                      '19/2042',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
