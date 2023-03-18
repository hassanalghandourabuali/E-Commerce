import 'package:flutter/material.dart';

class SliderTabsShose extends StatelessWidget {
  const SliderTabsShose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  'images/imageshose1.png',
                ),
                width: 343,
              ),
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20)
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Super Flash Sale \n 50% Off',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      width: 42,
                      height: 41,
                      child: Center(
                        child: Text(
                          '08',
                          style: TextStyle(
                              color: Color(0xff223263),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      child: Text(
                        ':',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      width: 42,
                      height: 41,
                      child: Center(
                        child: Text(
                          '34',
                          style: TextStyle(
                              color: Color(0xff223263),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      child: Text(
                        ':',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      width: 42,
                      height: 41,
                      child: Center(
                        child: Text(
                          '52',
                          style: TextStyle(
                              color: Color(0xff223263),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
