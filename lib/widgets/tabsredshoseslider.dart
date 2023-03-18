import 'package:flutter/material.dart';

class TabsRedShoseSlider extends StatelessWidget {
  const TabsRedShoseSlider({
    Key? key,
    required this.tabselected,
  }) : super(key: key);
  final bool tabselected;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          color: tabselected ? Colors.blue : Color(0xffEBF0FF)
      ),
      margin: EdgeInsets.only(left: 5),
      width: 10,
      height: 10,
    );
  }
}
