import 'package:flutter/material.dart';

class RedShoseSlider extends StatelessWidget {
  const RedShoseSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(
            'images/shose8.png',
          ),
          width: 343,
        ),
      ),
    );
  }
}
