import 'package:figmaproject/widgets/forchoosecreditscreen.dart';
import 'package:figmaproject/widgets/fortabsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChooseCreditScreen extends StatefulWidget {
  const ChooseCreditScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCreditScreen> createState() => _ChooseCreditScreenState();
}

class _ChooseCreditScreenState extends State<ChooseCreditScreen> {
  int _automaticaly = 0;

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
        ),        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Choose Card',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.add,color: Color(0xff40BFFF),),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _automaticaly = value;
                });
              },
              children: [
                ForChooseCreditScreen(),
                ForChooseCreditScreen(),
                ForChooseCreditScreen(),
                ForChooseCreditScreen(),
                ForChooseCreditScreen(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ForTabsScreen(chosen: _automaticaly == 0),
                ForTabsScreen(chosen: _automaticaly == 1),
                ForTabsScreen(chosen: _automaticaly == 2),
                ForTabsScreen(chosen: _automaticaly == 3),
                ForTabsScreen(chosen: _automaticaly == 4),
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/paymentmethodscreen'),
              child: Text(
                'Pay \$766.86',
                style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff40BFFF), minimumSize: Size(343, 57)),
            ),
          ),
        ],
      ),
    );
  }
}


