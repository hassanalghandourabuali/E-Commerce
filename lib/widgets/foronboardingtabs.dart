import 'package:flutter/material.dart';
class OnBoardingTabs extends StatelessWidget {
  const OnBoardingTabs({
    Key? key,
    required this.selected
  }) : super(key: key);
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          color: selected ? Colors.blue : Colors.grey
      ),
      margin: EdgeInsets.only(left: 5),
      width: 20,
      height: 5,
    );
  }
}
