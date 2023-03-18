import 'package:flutter/material.dart';

class ForTabsShoseTow extends StatelessWidget {
  const ForTabsShoseTow({
    Key? key,
    required this.forselectshose,
  }) : super(key: key);
  final bool forselectshose;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: forselectshose ? Colors.blue : Colors.grey
      ),
      margin: EdgeInsets.only(left: 5),
      width: 8,
      height: 8,
    );
  }
}
