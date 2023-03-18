import 'package:figmaproject/widgets/foronboardingscreen.dart';
import 'package:figmaproject/widgets/foronboardingtabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 30),
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _counter != 2,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip'
                  ),
                ),
                replacement: TextButton(
                  onPressed: () {},
                  child: TextButton(child: Text('start'),onPressed: (){Navigator.pushReplacementNamed(context, '/signinscreen');})
                ),
              )),
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _counter = value;
                });
              },
              children: [
                ForOnBoardingScreen(
                  image: 'images/illstrator.png',
                  text1: 'Welcome!',
                  text2: 'Now were up in the big leagues gettingour',
                  text3: 'turn at bat. The Brady Bunch that',
                  text4: 'we  Brady Bunch..',
                ),
                ForOnBoardingScreen(
                  image: 'images/illstrator2.png',
                  text1: 'Add to cart',
                  text2: 'Now were up in the big leagues gettingour ',
                  text3: 'turn at bat. The Brady Bunch that s the way ',
                  text4: 'we  Brady Bunch..',
                ),
                ForOnBoardingScreen(
                  image: 'images/illstrator3.png',
                  text1: 'Enjoy Purchase!',
                  text2: 'Now were up in the big leagues gettingour',
                  text3: 'turn at bat. The Brady Bunch that s the way ',
                  text4: 'we  Brady Bunch..',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnBoardingTabs(selected: _counter == 0),
              OnBoardingTabs(selected: _counter == 1),
              OnBoardingTabs(selected: _counter == 2),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
