import 'package:flutter/material.dart';
class ForTabsScreen extends StatelessWidget {
  const ForTabsScreen({
    Key? key,
    required this.chosen,
  }) : super(key: key);
  final bool chosen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Color(0xffEBF0FF),
          color: chosen ? Color(0xff40BFFF) : Color(0xffebf0ff)
      ),
    );
  }
}
